《AI抗体设计：从入门到精通的理论与实践》
目录大纲
1.0传统抗体设计,计算机辅助抗体设计及AI抗体设计	11
1.1抗体简述	11
1.2抗体类型	12
1.2.1单克隆抗体（Monoclonal Antibodies, mAbs）	12
1.2.2纳米抗体（Nanobody）	13
1.2.3抗体偶联药物（ADCs）	14
1.2.4双特异性抗体（BsAbs）	15
1.2.5三特异性抗体（Trispecific Antibodies）	16
1.3传统抗体设计的主要技术	17
1.3.1基于体内免疫的方法	17
1.3.2基于体外展示的筛选方法	17
1.3.3基于单细胞分析的方法	18
1.3.4基于原生B细胞库的抗体筛选方法	18
1.3.5 抗体人源化	19
1.3.6亲和力成熟	19
1.4计算机辅助抗体设计（Computer-Aided Antibody Design, CAAD）	20
1.4.1抗体与抗原的结构建模	20
1.4.2抗体与抗原结合位点的预测	20
1.4.3抗体-抗原复合物结构预测	20
1.4.4抗体人源化	21
1.4.5抗体亲和力提升	21
1.5 AI辅助抗体设计 （AI-aided Antibody Design, AIAD）	21
1.5.1全新设计CDR3	21
1.5.2 CDR1/2/3综合优化	22
1.5.3 AI模型生成序列	22
1.5.4 AI抗体人源化设计	22
1.5.5 AI抗体亲和力成熟度	23
1.6 本章结语	23
2.0抗体/抗原的结构模建 (Structural Modeling)	25
2.1 同源模建的技术原理	26
2.1.1同源模建的具体方法和流程	26
2.1.2同源模建的优势与局限性	28
2.1.3深度学习驱动的结构模建：AlphaFold与RoseTTAFold	28
2.2 SWISS-MODEL	29
2.2.1 SWISS-MODEL模板搜索和选择过程	30
2.2.2 SWISS-MODEL模型构建过程	31
2.2.3 SWISS-MODEL结构评估与验证	31
2.2.4 SWISS-MODEL模型优化与序列叠合问题	32
2.3 RoseTTAFold	33
2.3.1 RoseTTAFold的核心技术及原理	33
2.3.2 RoseTTAFold在线预测步骤	33
2.4 AlphaFold	35
2.4.1 AlphaFold核心功能及原理	35
2.4.2已知 的AlphaFold预测结构	36
2.4.3在线使用AlphaFold2/3进行预测	37
2.5 本章结语	39
3.0抗体-抗原结合模式预测（Binding Mode Prediction）	41
3.1 蛋白-蛋白结合模式预测的原理	42
3.1.1蛋白-蛋白对接的原理	42
3.1.2蛋白-蛋白对接的详细流程	42
3.1.3 构象搜索与评分	43
3.1.4结果优化与验证	43
3.1.5 AlphaFold在蛋白-蛋白对接中的应用	44
3.1.6 蛋白-蛋白对接的工具与软件	45
3.2 ClusPro	45
3.2.1 ClusPro算法概述及工作原理	45
3.2.2 ClusPro服务器(网站)的使用方法与步骤	46
3.2.3 ClusPro技术优势	49
3.2.4 ClusPro局限性	50
3.3 AlphaFold服务器	50
3.3.1 AlphaFold概述	50
3.3.2 AlphaFold 服务器的使用方法与步骤	50
3.4 AF2Complex	54
3.4.1 AF2Complex概述	54
3.4.2下载AF2Complex	55
3.4.3下载遗传数据库	56
3.4.4下载其他组件	58
3.4.5案列演示1：gp120与J3用AF2Complex模建	63
3.4.6案列演示2：利用AF2Complex进行CD276与抗体库的筛选	67
3.5 AlphaFold 3	72
3.5.1 AlphaFold 3的本地安装：	72
3.5.2 AlphaFold 3运行	74
3.5.3 AlphaFold 3的结果解读	79
3.5.4 AlphaFold3进行CD276与抗体库的筛选	82
3.6 本章结语	84
4.0 信息传递网络（MPNN）蛋白质序列设计	85
4.1 MPNN的原理及框架	86
4.1.1 MPNN的原理	86
4.1.2 MPNN框架	86
4.2 ProteinMPNN的搭建及调试	88
4. 2.1环境准备	89
4.2.2克隆项目并创建运行环境	89
4.2.3输入文件格式	89
4.2.4运行示例	90
4.3 ProteinMPNN的主要功能代码	90
4.3.1 示例代码（example scripts）	90
4.3.2帮助脚本（helper scripts）	91
4.4 ProteinMPNN的结果解析	92
4.4.1训练和测试结果	92
4.4.2 ProteinMPNN 的实验验证	94
4.4.3 ProteinMPNN结果解读	94
4.5 本章结语	96
5.0 AntiBMPNN抗体序列设计	97
5.1 Training Set的采集及处理	98
5.1.1下载抗体/纳米抗体的结构	98
5.1.2清理数据	99
5.1.3去掉重复数据	103
5.2 训练集（Training Set） 从.pdb 到.pt格式转换的处理过程	105
5.2.1将 .pdb 转换为 .cif 格式	105
5.2.2通过 GitHub 下载 PDBX	110
5.2.3使用 bash 脚本转化为.pt文件	112
5.3 Training Data的构建	114
5.4 Antibody数据集的Training策略及步骤	116
5.5 Parameters的调整	119
5.6 Backbone Noise对模型输出结果的影响	123
5.7 AntiBMPNN架构与训练性能	125
5.8 Nanobody及Antibody的序列恢复度（Sequence Recovery）	126
5.9 AntiBMPNN的打分函数	126
5.10本章结语	127
6.0 AntiBMPNN的部署及与其他方法的比较	128
6.1 AntiBMPNN的部署及测试	128
6.1.1安装说明	128
6.1.2设计新的抗体序列	129
6.2 AntiBMPNN进行单点序列设计及实验验证结果	131
6.3使用AntiBMPNN设计HuJ3 CDR1并进行实验验证	133
6.4使用AntiBMPNN设计HuJ3 CDR3并进行实验验证	134
6.5使用AntiBMPNN设计CD16A VH抗体（D6）的CDR2并进行实验验证	135
6.6基于实验数据的AntiBMPNN与现有抗体序列设计方法的比较分析	136
6.7本章结语	137
7.0 扩散模型（Diffusion）蛋白质序列从头设计	139
7.1 Diffusion模型的原理及框架	140
7.1.1 Diffusion的扩散框架	140
7.1.2预测过程	140
7.1.3噪声引入与去噪过程	141
7.1.4损失函数计算	141
7.1.5 Self-Condition训练技巧	141
7.2 RFDiffusion的搭建及调试	141
7.2.1克隆 RFdiffusion 仓库	141
7.2.2下载模型权重文件	141
7.2.3安装 SE3-Transformer	142
7.2.4获取 PPI Scaffold 示例	143
7.2.5运行扩散脚本	143
7.2.6基本执行 - 无条件单体设计	143
7.2.7图案支架构建（Motif Scaffolding）	144
7.2.8部分扩散（Partial Diffusion）	147
7.2.9 结合物设计（Binder Design）	148
7.2.10 绑定设计的实际考虑(Practical Considerations for Binder Design)	149
7.2.11对称寡聚物的生成	153
7.2.12 Docker	155
7.3 RFDiffusion的案列解析	156
7.3.1任务1：无条件蛋白单体生成（Unconditional Protein Monomer Generation）	156
7.3.2任务2：高阶对称寡聚体生成（High-order Symmetric Oligomers Generation）	156
7.3.3任务3：功能位点支架设计（Functional-site Scaffolding）	156
7.3.4任务4：从头蛋白与肽结合物设计（De novo Protein and Peptide Binder Design）	157
7.4本章结语	157
8.0 抗体序列人源化AI设计	158
8.1抗体人源化的概述	158
8.1.1抗体人源化设计的主要原理、步骤及流程	159
8.1.2 AI抗体人源化设计的原理	159
8.1.3人工智能辅助抗体人源化工具	160
8.2 BioPhi人源化设计平台	161
8.2.1 BioPhi技术原理	161
8.2.2  BioPhi应用	161
8.2.3 BioPhi平台特点	162
8.2.4  BioPhi 算法框架	162
8.2.5 BioPhi 在线平台	164
8.3 CUMAb抗体人源化与智能设计平台	171
8.3.1CUMAb算法概述	171
8.3.2 CUMAb应用与功能	171
8.3.3 CUMAb平台特点	172
8.3.4 CUMAb的算法框架	172
8.3.5 CUMAb 在线平台	174
8.4 HuDiff基于深度学习的抗体人源化工具	177
8.4.1 HuDiff简介（HuDiff-Ab及HuDiff-Nb）	177
8.4.2 Conda 环境	178
8.4.3 HuDiff-Ab的搭建及模型训练	178
8.4.4 HuDiff人源化设计	180
8.5本章结语	181
9.0 AI抗体亲和力成熟度	182
9.1抗体亲和力成熟度的概述	182
9.1.1体外亲和力成熟的需求与意义	182
9.1.2体外亲和力成熟的实验方法与技术挑战	182
9.1.3计算方法在亲和力成熟中的应用	182
9.1.4数据限制与AI模型的进展	183
9.2亲和力成熟度计算的原理	183
9.2.1亲和力的定义与理论基础	183
9.2.2分子模拟中的计算方法	184
9.2.3 统计能量函数	184
9.2.4 基于人工智能的计算方法	184
9.2.5 亲和力成熟的优化策略	185
9.2.6实验验证与反馈迭代	185
9.3 AntiBERTy	185
9.3.1 AntiBERTy 概述	185
9.3.2 AntiBERTy 的技术框架	185
9.3.3 AntiBERTy 的工作原理	186
9.3.4 AntiBERTy 在亲和力成熟中的应用	186
9.3.5 AntiBERTy 的安装	186
9.4 GearBind	192
9.4.1GearBind模型的设计与多层次几何信息传递	193
9.4.2自监督预训练与泛化能力增强	193
9.4.3模型性能与架构设计分析	194
9.4.4集成模型的优势与贡献分析	194
9.4.5 HER2结合体测试集上的表现	194
9.4.6 CR3022和anti-5T4 UdAb的亲和力成熟实验	194
9.4.7 GearBind安装及应用	194
9.5本章结语	197
10.0 ChatGPT在抗体设计中的应用	198
10.1 ChatGPT的概述	198
10.2 ChatGPT的原理	198
10.2.1 Transformer架构	198
10.2.2预训练和微调	199
10.2.3自注意力机制	199
10.2.4文本生成和调节层	199
10.2.5模型参数和扩展性	200
10.2.6应用与限制	200
10.3 Ollama及deepseek的安装与使用	200
10.3.1安装WSL（Windows Subsystem for Linux）	200
10.3.2进入 WSL 环境并设置根目录	201
10.3.3下载 Ollama 平台	201
10.3.4启动和管理 Ollama	202
10.3.5下载模型	206
10.3.6安装图形界面 Open WebUI (https://github.com/open-webui/open-webui)	207
10.4 ChatGPT在抗体数据处理的脚本生成及解析	240
10.4.1单个请求的ChatGPT生成脚本	240
10.4.2多次请求生成并修改脚本	240
10.4.3 ChatGPT生成的.cif.gz分类文件	244
10.4.4 ChatGPT生成统计 .pdb 文残基数量并移动特定文件	245
10.4.5 ChatGPT生成统计 .pdb 文残基数量并复制符合条件的文件	246
10.4.6 ChatGPT生成脚本将抗体的数据集随机分割为训练、验证和测试集	246
10.4.7 ChatGPT生成读取日志文件并绘制训练与验证曲线以比较困惑度	248
10.4.8 ChatGPT生成读取日志文件并绘制训练与验证曲线以比较准确率	250
10.4.9 ChatGPT生成统计 .pdb 文残基数量并移动特定文件	252
10.4.10 ChatGPT生成SeqLogo的图片	254
10.4.11 ChatGPT生成脚本来处理.fas文件到.json文件以便进行AlphaFold3	259
10.5 本章结语	261

