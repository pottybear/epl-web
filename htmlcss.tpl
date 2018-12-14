<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
td:nth-child(4) { width: 190px;}
.w3-myfont {
  font-family: "Comic Sans MS", cursive, sans-serif;
}
</style>

<body height: >

<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Close &times;</button>
  <a href="http://54.180.124.165" class="w3-bar-item w3-button">Mainpage</a>
  <a href="#" class="w3-bar-item w3-button">Information</a>
  <a href="#" class="w3-bar-item w3-button">Son</a>
  <a href="#" class="w3-bar-item w3-button">Ki</a>
  <a href="#" class="w3-bar-item w3-button">Hawng</a>
</div>

<div id ="main">

<div class="w3-teal">
  <button  class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
  </div>
</div>

<p><div class="w3-container w3-cell"></p>
<p><img src="/static/son.jpg"  style="height:250px ; width:220px;" ></p>
    
</div>

<div class="w3-container w3-cell" style="width : 1000px;">
	<h1 style= "padding-bottom: 10px;"><b>Son Heung-Min</b></h1>

	<dl>
                
       		<dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>CLUB:</b></dt>
		<dd style = "float: left;"><i> Tottenham Hotspur</i></dd>
                        
		<dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>POSITION:</b></dt>
		<dd style = "float: left;"><i> Foward </i></dd>
                        
		<dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>BIRTH:</b></dt>
		<dd style = "float: left;"><i> July 8, 1992 </i></dd>
					
        </dl>
</div>

<h2 class="w3-grey w3-myfont w3-xlarge" style="text-shadow:1px 1px 0 #444; padding-left: 20px; padding-bottom: 10px"><i>Appearances Summary</i></h2> 

<div class="w3-container">
	<div class="w3-responsive">
		<table class="w3-table-all w3-hoverable w3-small;">

			<tr>

				<th>League</th>
				<th>Date</th>
                		<th>Vs</th>
                		<th>Appearance</th>
                		<th>Result</th>
                		<th>Rating</th>                
                		<th>Goal</th>
                		<th>Assist</th>
                		<th>Sh</th>
                		<th>ShT</th>
                		<th>Yel</th>  
                		<th>Red</th>  
           		 </tr>

%for row in rows[:5]:
<tr>
	%for _ in row:
		<td>{{_}}</td>
		%end
	</tr>
	%end

</table>
</div>
</div>

<div style ="height: 100px"></div>
<hr>

<p><div class="w3-container w3-cell"></p>
<p><img src="/static/ki.jpg"  style="height:250px ; width:200px;" ></p>

</div>

<div class="w3-container w3-cell" style="width : 1000px;">
        <h1 style= "padding-bottom: 10px;"><b>Ki Sung-Yueng</b></h1>

        <dl>

                <dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>CLUB:</b></dt>
                <dd style = "float: left;"><i> Newcastle United</i></dd>

                <dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>POSITION:</b></dt>
                <dd style = "float: left;"><i> Midfielder </i></dd>

                <dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>BIRTH:</b></dt>
                <dd style = "float: left;"><i> January 24, 1989 </i></dd>

        </dl>
</div>

<h2 class="w3-grey w3-myfont w3-xlarge" style="text-shadow:1px 1px 0 #444; padding-left: 20px; padding-bottom: 10px"><i>Appearances Summary</i></h2>

<div class="w3-container">
        <div class="w3-responsive">
                <table class="w3-table-all w3-hoverable w3-small;">

                        <tr>

                                <th>League</th>
                                <th>Date</th>
                                <th>Vs</th>
                                <th>Appearance</th>
                                <th>Result</th>
                                <th>Rating</th>
                                <th>Goal</th>
                                <th>Assist</th>
                                <th>Sh</th>
                                <th>ShT</th>
                                <th>Yel</th>
                                <th>Red</th>
                         </tr>

%for row in rows[5:10]:
<tr>
        %for _ in row:
                <td>{{_}}</td>
                %end
        </tr>
        %end

</table>
</div>
</div>

<div style ="height: 100px"></div>
<hr>

<p><div class="w3-container w3-cell"></p>
<p><img src="/static/hhc.jpg"  style="height:250px ; width:200px;" ></p>

</div>

<div class="w3-container w3-cell" style="width : 1000px;">
        <h1 style= "padding-bottom: 10px;"><b>Hwang Hee-Chan</b></h1>

        <dl>

                <dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>CLUB:</b></dt>
                <dd style = "float: left;"><i> Hamburg SV</i></dd>

                <dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>POSITION:</b></dt>
                <dd style = "float: left;"><i> Forward </i></dd>

                <dt class= "w3-text-grey" style = "clear: both; float: left; padding-bottom: 50px;"><b>BIRTH:</b></dt>
                <dd style = "float: left;"><i> January 26, 1996 </i></dd>

        </dl>
</div>

<h2 class="w3-grey w3-myfont w3-xlarge" style="text-shadow:1px 1px 0 #444; padding-left: 20px; padding-bottom: 10px"><i>Appearances Summary</i></h2>

<div class="w3-container">
        <div class="w3-responsive">
                <table class="w3-table-all w3-hoverable w3-small;">

                        <tr>

                                <th>League</th>
                                <th>Date</th>
                                <th>Vs</th>
                                <th>Appearance</th>
                                <th>Result</th>
                                <th>Rating</th>
                                <th>Goal</th>
                                <th>Assist</th>
                                <th>Sh</th>
                                <th>ShT</th>
                                <th>Yel</th>
                                <th>Red</th>
                         </tr>


%for row in rows[10:]:
<tr>
        %for _ in row:
                <td>{{_}}</td>
                %end
        </tr>
        %end

</table>
<div style ="height: 150px"></div>
</div>
</div>



<script>
function w3_open() {
  document.getElementById("main").style.marginLeft = "25%";
  document.getElementById("mySidebar").style.width = "25%";
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}
</script>

</body>
</html>
