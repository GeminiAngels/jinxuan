<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">
	<title>首届“数据分析与知识发现”学术研讨会</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css" />

	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">
	<!--    <script src="js/jquery.js" type="text/javascript"></script>-->
	<script src="<%=path%>/static/spkx/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/tab.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/bootstrap.min.js"></script>
</head>

<body>
<!-- 头部模块 -->
<%@include file="/inc/headbar.jsp" %>

<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">大会主席</a></h2>
	<div class="box_qh" id="qh01">
		<%--<div class="qh_top">
			<ul id="tabs_head">
				<li class='menu_tab_li'><a href="#">荣誉主席</a></li>
				<li class='menu_tab_li'><a href="#">主 席</a></li>
				<li class='menu_tab_li'><a href="#">副主席</a></li>
				<li class='menu_tab_li'><a href="#">委 员</a></li>
			</ul>
		</div>--%>
		<div class="liebbox" id="tabs_body">
			<ul>
				<!--tab模块1-->
				<li id="s_1">
					<%--<div class="txt01">按姓氏拼音排序</div>--%>
					<div class="txtbox col-sm-12 col-xs-12">
						张晓林     &nbsp; &nbsp;中国科学院文献情报中心
						<br>王永吉    &nbsp; &nbsp; 中国科学院软件研究所
						<!-- <br>朱东华  北京理工大学
						<br>武夷山    中国科学技术发展战略研究院 -->
						<br>黎建辉    &nbsp; &nbsp; 中国科学院计算机网络信息中心
					</div>
				</li>
			</ul>
		</div>
		<div class="clear"></div>

	</div>
</div>


<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">报告专家</a></h2>
	<div class="box_qh" id="qh011">
		<%--<div class="qh_top">
			<ul id="tabs_head">
				<li class='menu_tab_li'><a href="#">荣誉主席</a></li>
				<li class='menu_tab_li'><a href="#">主 席</a></li>
				<li class='menu_tab_li'><a href="#">副主席</a></li>
				<li class='menu_tab_li'><a href="#">委 员</a></li>
			</ul>
		</div>--%>
			<style>
				.hynr .prof {
					width: 100%;
					padding: 20px 0;
					background: #f5f5f5;
					margin: 0 auto;
					margin-bottom: 20px;
				}
				.prof h4{
					text-indent: 2em;
				}
				.prof .js{
					padding-top: 40px;
				}
				@media screen and (max-width:960px){
					.hynr img:not(#img01){
						width:200px;
						height:220px;
						margin-left: 20%;
					}
				}
			</style>
			<div class="hynr">
				<div class="left col-sm-12 col-xs-12 row">
					<%--<h3>授课语言：中文＋英文</h3>--%>
					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">1 樊文飞</h3>
						<img class="col-sm-4 col-xs-12 text-center" id="img01" src="<%=path%>/photo/01.png" height="170"
							 width="200" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-8 col-xs-12 js">博士，英国爱丁堡大学信息学院主任教授，北京航空航天大学大数据科学与工程国际研究中心主任，大数据科学与脑机智能高精尖创新中心首席科学家，英国爱丁堡/苏格兰皇家科学院院士。</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">数据库理论与系统，包括大数据、数据质量、数据集成、分布式查询处理、查询语言、推荐系统、社会网络查询与分析、Web服务等。</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">Dependencies for Graphs</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">依赖关系是数据语义中很重要的部分，对基于规则的数据清理，查询优化，知识获取和知识库丰富等至关重要，几乎每个数据库教科书中都可以找到关系数据的依赖理论。但对于图依赖的研究目前还处于起步阶段，而且社交网络和知识库这类无模式的真实图对依赖关系有更为明显的需求。
							此报告将介绍一类被称为图实体依赖（GEDs）的图依赖关系。 GEDs是图模式和属性依赖关系的组合，并且与我们熟悉的功能依赖关系不同。我们解决了GEDs的根本问题，如从特征描述到复杂实体的可靠性、含义、验证和有限的公理性。并展示GEDs如何帮助我们进行不一致检测和知识提取。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">2 王永吉</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/02.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，中国科学院软件研究所百人计划特聘研究员，博士生导师，二级研究员。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							云计算、大数据、人工智能、隐蔽信道、实时系统。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							大数据驱动的图书馆智能管理与服务系统
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							随着云计算、物联网的不断发展，全球数据呈爆炸姿态增长。大数据的出现为传统图书馆带来了数据存储与分析的挑战。作者首先介绍当前人工智能的前沿动向及现有大数据分析的先进方法，再结合图书馆的业务需求，阐述大数据驱动的图书馆智能管理服务的方法、技术和应用，最后为未来智能图书馆的建设提出多个方面的（数据存储、服务探索、管理决策、人才培养等）策略及建议。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">3 黎建辉</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/03.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，中国科学院网络信息中心研究员，科学数据中心主任，CODATA中国委员会秘书长。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							科学数据开放政策与实践、超大规模分布式数据管理技术与系统、数据云服务技术、大数据管理技术、科学大数据计算与分析技术等
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							大数据驱动的科学发现：愿景与挑战
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							随着大科学装置、大型仪器设备和大规模的传感器网络等不断部署和应用，使得科学数据规模快速增长，数据广度和深度不断增强，将科学发现推进到了一个大数据驱动的时代，全新的科研思维和科研范式也正在逐步形成。面对这种改变和趋势，本文将剖析科学大数据的本质，以及大数据驱动科学发现的特点、技术需求和挑战，并结合作者参与的实践工作，在关键技术和系统等方面提出针对性的方案和见解。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">4 秦健</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/04.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，雪城大学信息学院的教授，元数据专家。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							图书情报与数字图书馆；计算机软件及计算机应用，包括元数据，知识和数据建模，科学交流。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							大元数据分析及其对科学学与科学政策的意义
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							研究数据资源库中存储了大量的科学数据。科学数据对现代科学至关重要，科学数据的元数据对于数据的发现、共享、重用、作者评价和重现研究也至关重要。最近，随着数据科学的出现，我们可以基于科学数据元数据分析科学机构的研究和政策环境。这些量化元数据与社会、政治和经济事件相结合，为大数据时代的科学学和科学政策研究创造了前所未有的机会。
							本报告介绍了大元数据分析的概念，以及从4年以上的项目经验中总结出来的方法论框架。本报告将基于工作流依次阐述在数据的采集、预处理、质量控制，以及研究设计、性能评估、联合文档写作等过程中的相关概念和计算工作。我们在4年的项目中的经验教训和其他数据问题也将一并讨论。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">5 李广建</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/05.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，北京大学信息管理系教授、博士生导师，兼系主任。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							数字图书馆、信息整合与信息系统等。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							基于大数据技术的可配置计算型情报分析系统设计与实现
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							大数据环境环境下，情报分析正朝着定量化、自动化、可重复、可机器处理的方向发展，如何利用大数据技术实现计算型情报分析，是当前值得研究的问题。介绍了基于大数据技术的可配置计算型情报分析系统的背景、需求、体系架构、主要功能及实现的关键技术。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">6 孙坦</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/06.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，二级研究员，博士研究生导师，中国农业科学院农业信息研究所所长。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							农业信息管理
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							基因大数据驱动的农作物精确育种关键技术探索与研究
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							遗传育种是农业科学创新的最前沿。现阶段农业领域遗传育种面临着一系列问题，如杂交育种需时较长、公共平台和资源共享不够、传统育种方法和现代生物技术融合缺乏有效工具支撑、缺乏跨学科的有效数据资源组织和管理、缺乏有效的本土化的生物信息算法模型及分析工具等。中国农业科学院农业信息研究所近年来在机器学习用于农作物育种数据分析领域做出了一些探索。随着国家农业大数据中心建设的推进，信息所设计了覆盖农作物精确育种大数据资源建设与治理、育种大数据基础设施建设、模型研制与平台开发、关联分析与可视化分析的完整技术及实施路线，为农作物精确育种技术变革提供全方位支撑。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">7 张智雄</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/07.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，中国科学院文献情报中心副主任，中国科学院武汉文献情报中主任，博士生导师。二级研究员，中国科学院特聘研究员计划入选者（2015年）。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							主要研究领域为信息抽取、数字图书馆、数字保存技术、信息监测、文本挖掘、知识组织等方面。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							建设基于大数据计算的新型知识服务模式
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							以中国科学院文献情报系统“十三五”重点突破方向“分布式大数据知识资源体系”为基础，阐述中国科学院文献情报系统在基于大数据计算的新型知识服务模式方面的建设情况。重点论述中国科学院文献情报系统在分布式大数据知识资源中心及相关服务体系建设、大数据治理框架体系建设、随身的知识资源获取和利用模式建设、科技文献的语义组织揭示模式建设、以及支撑科技监测和科技评价的模式建设的主要思路、举措和进展。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">8 方曙</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/08.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，中国科学院文献情报中心成都分中心研究员。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							情报计量学的理论与实践，利用先进的信息技术与手段，实现新的理论与模型的实际应用。重点研究对象涉及战略情报、专利情报和竞争情报等领域。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							测度技术融合的数据分析方法研究进展
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							报告对基于专利数据测度技术融合程度与趋势的现有分析方法进行了较系统的介绍，包括技术融合相关概念及内涵、基于专利数据的技术融合分析方法研究进展：评估技术融合度的指标、专利引文网络分析方法探索技术融合演化路径、专利共类识别技术融合轨道、主要应用与实证领域，最后对现有分析方法进行总结与评述，对未来研究作出展望。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">9 王曰芬</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/09.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，南京理工大学经济管理学院信息管理系教授/博士生导师，系副主任。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							竞争情报与知识管理；知识挖掘与知识服务；情报研究与经济信息分析。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							信息哲学视域下数据驱动的科学知识发现方法论思考
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							在信息哲学的理论中，信息是标志间接存在的哲学范畴,它是物质(直接存在)存在方式和状态的自身显示。信息是由自在信息(客观间接存在)、自为信息(信息的主体直观把握)、再生信息(信息的主体创造)构成从信息哲学的理论来看数据、信息向知识、智慧的转化,知识是由再生信息与人的主观意识结合的产物,知识和智慧是信息第三性级的质所揭示的结果。D-K-I-W的流动只有经过自在信息—自为信息—再生信息环节,才能在本质上实现信息的迁移。因此，从信息哲学视域下，以信息作为数据转化为知识的中介，研究数据驱动的科学知识发现方法的目标、核心理论基础、特征、组成要素与应用范围等，以形成一些值得深入思考的问题，为后续研究提供参考。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">10 欧石燕</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/10.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，南京大学信息管理学院教授、博士生导师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							长期从事语义网技术、数字图书馆、自然语言处理与文本挖掘的研究工作。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							关联数据的消费：查询、分析与可视化
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							本报告首先对面向关联数据的自动问答这一研究领域进行概括介绍，然后重点讲述一种面向图书馆关联数据的自动问答新方法，面对图书馆中相互关联的RDF数据集,-0/将自然语言提问转换为结构化的SPARQL查询从中提取出特定答案。该问答方法的创新之处在于采用基于句法解析的问句分解法将复杂问句分解为若干个简单问句，从而将针对多个数据集的自动问答转换为针对单一数据集的自动问答，有利于SPARQL查询的构建和答案的整合。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">11 夏峰</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/11.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，大连理工大学软件学院教授，博士生导师
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							主要研究大数据、计算社会科学、社会计算、网络科学等方面。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							学术大数据的分析和挖掘
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							科研数据的体量正在以前所未有的速度增长。近年来各学科科研活动活跃，包括学术期刊、会议论文、学位论文、专著、专利、演示灯片、实验数据等多元化科研数据量随之不断上升。应建立数字图书馆和知识库确保科研数据的可用性。因此科研大数据研究领域兴起。学术大数据的可用却确保科研人员更好地理解科学的本质，并获得与全世界范围内学者联系共通的能力。学术大数据会成为热门的研究领域之一。本报告将聚焦最近在分析和挖掘科研大数据价值的最新进展，并讨论当下面临的机遇与挑战。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">12 金博</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/12.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，大连理工大学副教授。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							数据挖掘、大数据分析、创新管理、商务智能。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							“AI+慢性病管理”使精准医疗成为可能
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							调查显示，慢性病及其并发症的急性发作已成为威胁我国老年患者健康的最主要因素。以帕金森症、阿兹海默症等神经系统慢性退行性疾病为研究对象，针对临床医学研究中的慢性病并发症评估、药品不良反应预测、联合用药推荐等难题，采用机器学习和医疗大数据分析的方法，在前期积累的海量医疗数据基础上，构建人工智能+慢性病管理的模式，以数据为驱动，使精准医疗成为可能，为提高我国医疗信息服务水平、合理利用医疗资源、探索新的慢性病并发症个性化治疗模式提供理论与实践支撑。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">13 乐晓虬</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/13.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，中国科学院文献情报中心知识技术研发中心PI（语义技术与知识挖掘），研究馆员。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							科技文献文本理解与知识挖掘技术、文本自动生成技术。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							领域科技论文主题研究脉络挖掘研究与实践
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							讨论面向科技论文全文探索了领域主题发展脉络结构及要点信息挖掘方法。针对不同体量样本数据，分析了科技论文组织结构特征及主题与句子间的上下文信息，综合利用深度学习及半监督机器学习模型对主题的研究线路、层级结构及核心主题句进行了识别和汇聚，并对核心主题句的语义类别做进一步区分。以气候变化领域研究论文数据为例开展了相应实验，初步结果显示，该方法能够有效揭示研究主题在不同时段的研究进展、研究点层级框架、研究要点等信息，能够较好地汇聚领域研究主题的主要研究问题、观点及结论。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">14 李晨亮</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/14.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，武汉大学计算机学院副教授，硕士生导师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							研究兴趣包括信息检索、数据挖掘(文本挖掘)、自然语言处理、机器学习和社交媒体分析。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							基于主题模型的无监督文本分类技术
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							文档分类是文本管理与语义分析的一个重要手段。现有的技术方案主要依赖于监督型机器学习技术。这些监督型技术需要大量的人工标记文本数据作为训练数据。伴随着互联网数据的爆炸性增长，人们需要处理的分类任务越来越多，文本类别也变得更加多种多样。因此，分类模型的产生往往伴随着大量的人工投入去构建训练数据。在本次报告中，将介绍一种基于主题模型的无监督文本分类技术。该技术通过类别语义相关的少量种子词,将单词共生关系与概率主题模型相结合，从而达到文本分类的目标。在两个标准文本分类数据集上的实验效果表明，该方法在分类任务上取得了接近甚至超越先进的监督型文本分类技术。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">15 沈志宏</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/15.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，中国科学院计算机网络信息中心大数据应用服务技术实验室，高级工程师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							科学数据管理与集成，关联数据，语义网，大数据管理与处理
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							关联大数据的技术挑战、对策与实践
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							随着海量知识信息的快速产生和采集，基于语义网的关联数据亦呈现出明显的大数据的4V特征。本报告将针对大规模、动态迭代式再组织的关联数据带来的存储和高效加工处理问题，分析其给传统技术架构带来的挑战，给出关联大数据的存储、查询管理方案以及自动化加工流水线技术，并结合应用案例分享实践的效果。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">16 袁军鹏</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/16.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，中国科学技术信息研究所研究员，研究员，硕士生导师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							主要研究领域为科学学、科学计量学、科技政策、数据挖掘等。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							面向同行评议的专家社会关系研究
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							同行评议是现在科研评审的主要方法之一，但是由于评议人与被评议人之间存在的各种社会关系导致评审结果的公正性受到影响。本报告正视评议人社会关系影响的存在，研究这些社会关系对同行评议的影响以及获取这些社会关系的方法。提出将评议人与被评议人之间的关系分析识别并根据紧密程度予以合理量化，在评审中，将量化后的社会关系回避处理，或者予以不同的权重设置，与评议人的评议结果相结合，从而使评议结果更具有公信力。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">17 李月琳</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/17.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，南开大学商学院副院长，信息资源管理系系主任，教授，博士生导师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							信息行为、信息检索、数字图书馆、信息系统评估。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							社交媒体健康信息质量研究：基于真伪健康信息特征的分析
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							针对社交媒体中健康信息质量不高，国民健康素养水平整体偏低，缺少对健康信息的辨别机制等现状，本研究从19位50岁以上的微信朋友转发的健康信息中收集482条健康信息作为研究样本，利用辟谣平台和邀请专家对其真伪进行判断。基于信息质量评价框架，使用NVIVO工具，通过开放编码分析真、伪信息的特征，并通过卡方检验，验证真伪信息特征的差异，尤其是伪健康信息的显著特征，构建伪健康信息特征列表，研究发现，真伪健康信息的转发行为受转发者的性别、职业的影响。本研究有助于用户提高对健康信息的辨别能力，进而提升他们的健康信息素养。同时，本研究识别的伪健康信息特征有助于健康信息系统设计相应的机制，通过不同的技术手段，屏蔽或清除此类伪健康信息，从而从根本上提高网络健康信息的质量，净化网络健康信息环境。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">18 李江</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/18.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，浙江大学公共管理学院信息资源管理系副教授、博士生导师，清华大学公共管理学院兼职研究人员。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							科学计量学。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							数据趋动的科学知识老化模式识别：『睡美人』与『昙花一现』现象
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							文献数据库与网络平台如Google Scholar,PubMed, Web of Science, JSTOR, ORCID, EasyChair以及“补充计量学（Altmetrics）”使得新一代的科学家更有能力基于数据洞悉科学知识的社会化过程。在科学引文中，早在50多年前，普赖斯就发现了驱动引文增长的基本模式：被引用越多的论文越容易被引用。这种模式被称作“优先连接”。当然，在优先连接模式之外，也有一些特殊现象，例如“睡美人”与“昙花一现”现象。这两种知识老化模式被重视之后，学术共同体开始重新评估低被引和零被引论文的价值。如何识别这两种科学知识老化模式，便成为一个重要的研究问题。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">19 刘炜</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/19.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，上海图书馆上海科学技术情报研究所副馆(所)长、研究员。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							数字图书馆；数字人文；数字阅读；语义网与关联数据；大数据；机器学习
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							机器智能与数据服务
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							数据的价值不仅在于数据本身，更在于数据提供的机器学习能力使越来越多的人工系统具备超越人类的智能。当今的数据服务应该充分利用机器学习的技术和能力，在对象描述、名称识别、语义抽取、知识关联、关系可视化以及需求匹配、精准推送和个性服务等方面突破传统思维，引入人工智能方法，提供智慧服务，把图书情报服务提升到新的发展阶段。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">20 章成志</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/20.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，南京理工大学经济管理学院教授，博士生导师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							主要包括信息组织、信息检索、文本挖掘及自然语言处理等，主要的研究方向为学术文本挖掘、电商评论挖掘、社会化标签系统挖掘、多语言文本挖掘、多语言领域本体学习等。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							数据驱动的用户调研问卷自动生成研究
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							传统的用户调研问卷存在调研成本高、周期长等问题。当前电商或社交网站上存在大量的用户评论，这些评论为自动生成用户调研问卷提供了充分的数据基础。为此，本报告提出数据驱动的用户调研问卷自动生成方法，描述其中关键的技术实现；然后以Amazon为例，介绍自动问卷调研技术在中美用户购物行为研究中的应用。同时，以途牛网为例，验证数据驱动的用户调研问卷自动生成方法的可行性。随着自动问卷调研、产品挖掘、情感分析等关键技术的不断发展和优化，基于自动问卷调研技术的用户研究将是一个比较有应用前景的研究方向。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">21 李涓子</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/21.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，清华大学计算机科学与技术系，教授，博士生导师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							语义 Web，新闻挖掘与跨语言知识图谱构建。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							知识图谱与事件学习
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							知识图谱将信息表达成概念、实体及其关系，提供了帮助互联网组织、管理和理解海量信息的能力，知识图谱与大数据和深度学习一起，已经成为推动人工智能发展的核心驱动力之一。 本报告将概述知识图谱和知识共享的基础理论以及在事件知识学习上的研究工作。
						</p>
					</div>

					<div class="col-sm-12 col-xs-12 prof">
						<h3 class="col-sm-12 col-xs-12">22 夏立新</h3>
						<img class="col-sm-3 col-xs-12 text-center" src="<%=path%>/photo/22.png" height="200"
							 width="170" alt=""/>
						<%--<h4>樊文飞</h4>--%>
						<p class="col-sm-9 col-xs-12 js">
							博士，华中师范大学信息管理学院院长，教授，博士生导师。
						</p>
					</div>
					<div class="col-sm-12 col-xs-12 prof" style="margin-top: -20px">
						<h4>研究方向：</h4>
						<p class="col-sm-12 col-xs-12">
							知识管理与服务、信息组织与检索等。
						</p>
						<h4>报告题目：</h4>
						<p class="col-sm-12 col-xs-12">
							教育大数据的运用——基于内容管理和服务的视角
						</p>
						<h4>报告摘要：</h4>
						<p class="col-sm-12 col-xs-12">
							教育大数据不仅在于教学课堂的线上和线下数据，还涵盖教育的全员、全阶段、全方位、全环境。通过构建教育大数据聚合与服务平台，提供成长记录、课程优化、学习预警、资源评价、个性化推荐和决策支持等服务，有助于解决教学过程质量管理、学生学习成长监测、教育管理决策能力不足等问题，促进教育规模化、精准化和个性化的有机统一，提升我国教育的自主创新能力与国际竞争力，实现教育的均衡与可持续发展。当前，教育大数据已在知识推荐、学情分析、未来教室等方面进行了一定的研究和实践，未来还将在知识情境的可体验性、教育的智能化，以及实现区域性教育公平等领域有更深入的探索。
						</p>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		<div class="clear"></div>

	</div>
</div>

<div class="main_bg">
	<div class="main">
		<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
			<a href="#">倒计时</a></h2>
		<div class="row djs">
			<div class="col-md-4 column col-xs-12">
				<h3>距离大会开幕还有</h3>
			</div>
			<div class="col-md-8 column col-xs-12">
				<time>2017-06-08T09:00:00+0100</time>
			</div>
		</div>
	</div>
</div>
<%@include file="/inc/footer.jsp"%>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<c:if test="${not empty register}">
	<script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>
<script src="<%=path%>/static/spkx/js/biz.js"></script>
<script src="<%=path%>/static/js/jquery.countdown.js"></script>
<script type="text/javascript">
	$(function(){
		var hash = '${param["position"]}';
		if(hash){
			var target = $('#'+hash);
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
				}
			}
		}
		//注册倒计时插件
		$('time').countDown({
			with_separators: false
		});
	});
</script>
</body>
</html>