1. 训练 AntiBMPNN
要训练或重新训练 AntiBMPNN，请克隆此 GitHub 仓库。
注意：在训练之前，请确保您的 GPU 驱动已正确安装。

训练 AntiBMPNN 所需的数据集可在以下地址下载：
https://zenodo.org/records/13387792/files/training_set.zip

该数据集的结构与 ProteinMPNN 相同，详细信息请参考：ProteinMPNN 训练数据说明。

2. 训练集文件格式
训练数据集中包含以下几种文件类型：

PDBID_CHAINID.pt  -  包含 PDBID 中 CHAINID 链的信息  
PDBID.pt          -  生物装配体的元数据和相关信息  
list.csv:  
   CHAINID    -  链的标识符（格式：PDBID_CHAINID）  
   DEPOSITION -  结构提交日期  
   RESOLUTION -  结构解析度  
   HASH       -  该序列的唯一 6 位哈希值  
   CLUSTER    -  该链所属的序列聚类（序列相似度阈值 seqID=30%）  
   SEQUENCE   -  参考氨基酸序列  
valid_clusters.txt -  用于验证的聚类信息  
test_clusters.txt  -  用于测试的聚类信息  

3. 代码结构
Training.py - 主要用于训练模型的脚本
model_utils_Antibody.py - 模型的工具函数和类
utils_Antibody.py - 数据加载的工具函数和类
training_output/ - 模型训练的输出结果

4. 训练参数设置
训练参数可以在 Training.py 中编辑，查找带有 "# Training parameters" 注释的行即可修改。

5. 训练环境配置
创建 Python 训练环境（使用 Conda）：


conda create -n mlfold python=3.11 numpy pandas torch peptides scikit-learn tqdm && conda activate mlfold

6. 预训练模型及参数设置
官方提供的 AntiBMPNN 预训练模型及其训练参数如下：

antibmpnn_000.pt → --num_neighbors 48 --backbone_noise 0.00 --num_epochs 200
antibmpnn_010.pt → --num_neighbors 48 --backbone_noise 0.10 --num_epochs 200
antibmpnn_020.pt → --num_neighbors 48 --backbone_noise 0.20 --num_epochs 200
antibmpnn_030.pt → --num_neighbors 48 --backbone_noise 0.30 --num_epochs 200
antibmpnn_040.pt → --num_neighbors 48 --backbone_noise 0.40 --num_epochs 200
antibmpnn_050.pt → --num_neighbors 48 --backbone_noise 0.50 --num_epochs 200
antibmpnn_060.pt → --num_neighbors 48 --backbone_noise 0.60 --num_epochs 200
antibmpnn_070.pt → --num_neighbors 48 --backbone_noise 0.70 --num_epochs 200
antibmpnn_080.pt → --num_neighbors 48 --backbone_noise 0.80 --num_epochs 200
antibmpnn_090.pt → --num_neighbors 48 --backbone_noise 0.90 --num_epochs 200
antibmpnn_100.pt → --num_neighbors 48 --backbone_noise 1.00 --num_epochs 200
以上内容为 AntiBMPNN 训练、数据结构、代码组织及预训练模型参数的说明。