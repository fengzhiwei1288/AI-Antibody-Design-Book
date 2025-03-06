#!/bin/bash
start_time=$(date +%s)

cpu_cores=7

af3_dir="/home/zes47/alphafold3"
hmmer_bin_path="/home/zes47/hmmer/bin"
db_dir="/home/zes47/af2_db"
db2_dir="/home2/zes47/af3_db"


python $af3_dir/run_alphafold.py \
    --json_path=test_epco.json \
    --output_dir=./ \
    --model_dir=../model/ \
    --jackhmmer_binary_path=${hmmer_bin_path}/jackhmmer \
    --nhmmer_binary_path=${hmmer_bin_path}/nhmmer \
    --hmmalign_binary_path=${hmmer_bin_path}/hmmalign \
    --hmmsearch_binary_path=${hmmer_bin_path}/hmmsearch \
    --hmmbuild_binary_path=${hmmer_bin_path}/hmmbuild \
    --small_bfd_database_path=$db_dir/small_bfd/bfd-first_non_consensus_sequences.fasta \
    --mgnify_database_path=$db_dir/mgnify/mgy_clusters_2022_05.fa \
    --uniprot_cluster_annot_database_path=$db_dir/uniprot/uniprot.fasta \
    --uniref90_database_path=$db_dir/uniref90/uniref90.fasta \
    --ntrna_database_path=$db2_dir/nt_rna_2023_02_23_clust_seq_id_90_cov_80_rep_seq.fasta \
    --rfam_database_path=$db2_dir/rfam_14_9_clust_seq_id_90_cov_80_rep_seq.fasta \
    --rna_central_database_path=$db2_dir/rnacentral_active_seq_id_90_cov_80_linclust.fasta \
    --pdb_database_path=$db2_dir/pdb_2022_09_28_mmcif_files.tar \
    --seqres_database_path=$db_dir/pdb_seqres/pdb_seqres_2022_09_28.fasta \
    --jackhmmer_n_cpu="$cpu_cores" \
    --nhmmer_n_cpu="$cpu_cores"


end_time=$(date +%s)

runtime=$((end_time - start_time))

hours=$((runtime / 3600))
minutes=$(( (runtime % 3600) / 60 ))
seconds=$((runtime % 60))

echo "脚本运行时间为：$hours 小时 $minutes 分钟 $seconds 秒"

echo "Start Time: $start_time" >log.txt
echo "End Time: $end_time"  >log.txt
echo "AF3 modeling has completed in ：$hours hh $minutes mm $seconds ss"  >log.txt