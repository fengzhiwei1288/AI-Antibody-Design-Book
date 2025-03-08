#!/bin/bash

# 定义输入和输出文件夹（都在当前目录下）
input_folder="."
output_folder="."

# 确保输出文件夹存在，如果不存在则创建
mkdir -p "$output_folder"

# parse_cif_noX.py 脚本路径（假设脚本在当前目录下）
parse_script_path="./parse_cif_noX_change.py"

# 遍历输入文件夹中的所有 .cif.gz 文件
for filepath in "$input_folder"/*.cif.gz; do
    filename=$(basename "$filepath")  # 提取文件名
    output_filename="${filename%.cif.gz}.pt"  # 修改扩展名为 .pt
    output_filepath="$output_folder/$output_filename"  # 指定输出路径
    
    # 检查输出文件是否已经存在
    if [ -f "$output_filepath" ]; then
        echo "Skipping $filename as $output_filename already exists."
    else
        # 运行 Python 脚本处理文件
        python "$parse_script_path" "$filepath" "$output_filepath"
        
        # 检查上一步命令是否成功
        if [ $? -eq 0 ]; then
            echo "Processed $filename successfully."
        else
            echo "Error processing $filename."
        fi
    fi
done

echo "All files processed."
