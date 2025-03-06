#!/bin/bash

# 激活 AlphaFold3 的环境
source activate af3_new

# 定义必要路径
cpu_cores=6
af3_dir="/home/zes47/alphafold3"
hmmer_bin_path="/home/zes47/hmmer/bin"
db_dir="/home/zes47/af2_db"
db2_dir="/home2/zes47/af3_db"

start_time=$(date +%s)

# 遍历当前目录下的所有 .json 文件
for json_path in *.json; do
    # 跳过没有 .json 文件的情况
    if [[ ! -f "$json_path" ]]; then
        echo "未找到任何 JSON 文件，退出脚本。"
        exit 1
    fi

    echo "开始处理文件: $json_path"
    echo "开始处理文件: $json_path" >> log.txt

    # 记录开始时间

    # 运行 AlphaFold3
    python $af3_dir/run_alphafold.py \
        --json_path=$json_path \
        --output_dir=./ \
        --model_dir=$af3_dir/model/ \
        --jackhmmer_binary_path=${hmmer_bin_path}/jackhmmer \
        --nhmmer_binary_path=${hmmer_bin_path}/nhmmer \
        --hmmalign_binary_path=${hmmer_bin_path}/hmmalign \
        --hmmsearch_binary_path=${hmmer_bin_path}/hmmsearch \
        --hmmbuild_binary_path=${hmmer_bin_path}/hmmbuild \
        --small_bfd_database_path=$db_dir/small_bfd/bfd-first_non_consensus_sequences.fasta \
        --mgnify_database_path=$db_dir/mgnify/mgy_clusters_2022_05.fa \
        --uniprot_cluster_annot_database_path=$db2_dir/uniprot_all_2021_04.fa \
        --uniref90_database_path=$db2_dir/uniref90_2022_05.fa \
        --ntrna_database_path=$db2_dir/nt_rna_2023_02_23_clust_seq_id_90_cov_80_rep_seq.fasta \
        --rfam_database_path=$db2_dir/rfam_14_9_clust_seq_id_90_cov_80_rep_seq.fasta \
        --rna_central_database_path=$db2_dir/rnacentral_active_seq_id_90_cov_80_linclust.fasta \
        --pdb_database_path=$db2_dir/pdb_2022_09_28_mmcif_files.tar \
        --seqres_database_path=$db_dir/pdb_seqres/pdb_seqres_2022_09_28.fasta \
        --jackhmmer_n_cpu="$cpu_cores" \
        --nhmmer_n_cpu="$cpu_cores" \
        --max_template_date="2025-09-30" \
        --flash_attention_implementation="cudnn"

    # 记录结束时间
    end_time=$(date +%s)
    runtime=$((end_time - start_time))
    hours=$((runtime / 3600))
    minutes=$(( (runtime % 3600) / 60 ))
    seconds=$((runtime % 60))

    echo "处理文件 $json_path 的运行时间为：$hours 小时 $minutes 分钟 $seconds 秒"
    echo "Start Time: $start_time" >> log.txt
    echo "End Time: $end_time" >> log.txt
    echo "文件 $json_path 的 AlphaFold3 处理完成，用时：$hours hh $minutes mm $seconds ss" >> log.txt
done

echo "所有 JSON 文件处理完毕！"
