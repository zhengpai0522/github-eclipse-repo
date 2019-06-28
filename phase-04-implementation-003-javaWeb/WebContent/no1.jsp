<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
    /* No.1 :  Java代码藏于 JSP 中，与 html混合，这是JSP的特征，实验 1， 我们将一些字符串赋予java变量，然后看下面如何应用   */
    String title="中国新说唱";
%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/hahaha.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1000px',
			top : '50px'
		}, 30000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction1.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem1"
		preload="auto"></audio>
	<span id="firstline" style="font-size: 22px; color: white">大家好，我想给大家介绍一个我喜欢的节目————“<span
		style="font-size: 38px; color: yellow"><%=title %></span>”！下面是一个我喜欢的选手的表演。欢迎大家观赏,谢谢！点击屏幕左下角的图案，立即开始观看！！
	</span>
	<audio id="waiting" src="/static/audio/waiting1.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 19px; color: white; position:absolute; left :10px;top:60px" >
		《H.M.E》<br /> <span style="font-size: 19px; color: grey">
			-PGONE万磁王 </span><br /> 
			<br /> 《中国新说唱》是爱奇艺自制华语青年说唱音乐节目，其前身为《中国有嘻哈》。 
			<br /> 由吴亦凡、张震岳、MC Hotdog、潘玮柏、邓紫棋担任明星制作人。
	</div>
	<img src="/static/imgs/hehe.jpg"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" 
		title="点击后，开始观看 ！"
		/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="200px" controls="controls"
			src="http://tb-video.bdstatic.com/tieba-smallvideo-transcode-crf/50911924_7e9c9aa66dc629ab1a3bfbb41c8623c4_1.mp4" onended="onVideoEnd();" />
	</div>
	<div id="hornor" style="display:none;position:absolute;left:300px; bottom:10px;color:white;font-size:24px" align="center">谨以此向今年的电影《流浪地球》和华为公司在 2019 年发生的事表示致敬 !  本网页将放在以下网站 sdlc.huaku-2019.xyz (华为公司的云服务器) </div>
</body>
</html>