<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.min.js"></script>
  
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <title>Live Tv Ui</title>
  <style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,600,700|Trade+Winds&display=swap');    
    
body {
  background-color: #8098ff;
  margin:0px;
  font-family: 'Montserrat';
  font-size: 16px;

  
  
}			

.navbar {
  margin: 6px;
  background-color: #4b6464;
  overflow: hidden;
  display: flex;
  border-radius: 10px; 
  box-shadow: 0px 4px 0px 0px #171b2d;
  
  
  
}

.nav-item {
  flex: 1;
  color: white;
  font-weight: bold;
  text-align: center;
  padding: 10px 16px;
  border-radius: 10px; 
  cursor: pointer;
  transition: background-color 0.3s;
  
}

.nav-item:hover {
  background-color: #94c5c5;
  box-shadow: 0px 4px 0px 0px #171b2d;
  
}

.active {
  background-color: #94c5c5;
  box-shadow: 0px 4px 0px 0px #171b2d;
}

.content-box {
  display: none;
  margin: 5px;
}


  
         
        #sidebar {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .profile-picture {
            width: 180px;
            height: 180px;
            border-radius: 20px;
            margin-top: 5px;
            background-color: #4b6464;
            box-shadow: 0px 4px 0px 0px #171b2d;
        }

        .sidebar-item {
            font-size:16px;
            color: #fff;
            font-weight: bold;
        }
        
        
        
        

.sidebar-btn:hover,
.sidebar-btn:active {
  background-color: #94c5c5;
  box-shadow: 0px 4px 0px 0px #171b2d;
  
}


.sidebar-btn {
  margin-top:7px;
  width: 97%;
  padding:10px;
  background-color: #4b6464;
  overflow: hidden;
  display: flex;
  border-radius: 10px; 
  border:0px;
  box-shadow: 0px 4px 0px 0px #171b2d;
  
}

        
        #popup {
            width:70%;
            height: 70vh;
            border-radius: 10px; 
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #4b6464;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        
        .app {
    display: flex;
    
}

.app-bar {  
    border: 0px solid gold;
    color: white;
    margin-left: 5px;
    width: 97%;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.app-box {
    /* Background pattern from Toptal Subtle Patterns */ 
    
    background-image: url('https://i.postimg.cc/k4mLJDcZ/div-poster.jpg'); 
    background-repeat: no-repeat;     
    background-position: center; 
    background-size: cover;
    color: white;
    padding: 0px;
    width: 100%;
    height: 160px;
    border-bottom-left-radius: 20px;
    border-bottom-right-radius: 20px;
    box-shadow: 0px 4px 0px 0px #171b2d;
    align-items: center;
}

.toggle-btn {
    cursor: pointer;
    font-size: 1.5em;
    color: #fff;
}

.app-logo {
    font-size: 1.5em;
    flex-grow: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    border: 0px solid gold;
}

.app-logo img {
    max-height: 50px;
    max-width: 100%;
    border: 0px solid gold;
}

.notification {
    display: flex;
    align-items: center;
    cursor: pointer;
    color: #fff;
    font-weight: bold;  
}

.notification-icon {
    margin-right: 5px;
}

.notification-icon:hover {
    color: yellow;
}

.app-sidebar {
    width: 0;
    height: 100vh;
    background-color: #8098ff;
    color: white;
    position: fixed;
    top: 0;
    left: 0;
    overflow-x: hidden;
    transition: 0.5s;
}

.app-sidebar ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.app-sidebar li {
    padding: 15px;
}

.app-sidebar a {
    text-decoration: none;
    color: white;
}

.app-sidebar a:hover {
    color: yellow;
}

.toggle-btn {
    cursor: pointer;
    font-size: 1.5em;
    display: block;
}

.close-btn {
    cursor: pointer;
    font-size: 2.5em;
    display: none;
    position: absolute;
    top: 10px;
    right: 10px;
}

.content-wrapper{
    height:70vh;    
    border: 0px solid gold;
    overflow: scroll;
}




.league-box{
border: 0px dodgerblue solid; 
display: flex;
flex-direction: row;
justify-content: space-between;
height: 30px;
}

.matches-box{
margin-top: 7px;
background-color:#bfffea;
padding:5px;
border: 0px dodgerblue solid; 
border-radius: 10px;
background: linear-gradient(to bottom right, #fff, transparent);
box-shadow: 0px 4px 0px 0px #171b2d;
}

.league-logo{
width: 30px;
height: 30px;
border: 0px dodgerblue solid;

}

.league-name{
margin: 5px;
border: 0px dodgerblue solid;
font-size: 16px;
font-weight: bold;
color: #000;
width:100%;
display: inline-block;


}

.details-ul{
list-style:none;
padding:0;
margin:0;
}

details { 
padding: 0px;
margin: 1px;
border-radius: 10px; 
border: 0px dodgerblue solid; 
background-color: #4b6464;
display: block;
box-shadow: 0px 4px 0px 0px #171b2d;
} 

summary{
    display: block;
    outline: none; 
    cursor: pointer;
    list-style: none;
 
}

summary::-webkit-details-marker { 
display: none;

}

  .summary-btn{
      margin-top:6px;
  }

  .summary-btn:active,
  .summary-btn:focus,
  .summary-btn:hover {
   background-color: #94c5c5;
   color: #ffeba7;
   border-radius: 10px;
   box-shadow: 0px 4px 0px 0px #171b2d;
  }
  
    .container-match { 
display: flex;
flex-direction: row;
justify-content: space-between;
font-weight: bold;  
width: 100%; 
height: 40px; 
border: 0px #fff solid; 
border-radius: 10px;
padding: 5px 0px;


} 

.details-box {
  padding: 1rem 0px;
}



.logo-box{
display: flex;
flex-direction: row;
justify-content: space-between;


}

.home-logo {
				width: 38px;
				height: 38px;
				border-radius: 50%;
				border: 0px #000 solid;				
}

.away-logo {
				width: 38px;
				height: 38px;
				border-radius: 50%;
				border: 0px #000 solid;				
}

.home-name { 
margin-top: 9px;
text-align: center;
font-size: 12px;
color: #fff;
width: 102px;
height: 12px;
display: inline-block;
width: 31%;
height: 30px;
text-align: right;
white-space: nowrap;  
overflow: hidden;
text-overflow: ellipsis;
padding:0px 5px;

} 

.away-name { 
margin-top: 9px;
font-size: 12px;
text-align: center;
color: #fff;
width: 102px;
height: 12px;
display: inline-block;
width: 31%;
height: 30px;
text-align: left;
white-space: nowrap;  
overflow: hidden;
text-overflow: ellipsis;
padding:0px 5px;

} 


.match-time { 
font-size: 15px;
color: #fff;
padding : 11px;
border-radius: 5px;
border: 0px #fff solid;
display: inline-block;
} 


   .server-btn {
    width: 32%;
    height: 30px;
    font-weight: bold;
    border-radius: 5px;        
		 padding: 3px; 
    text-align: center;
    border: 0px dodgerblue solid; 
    background-color: #20c0c0;
    color: #000;
    box-shadow: 0px 4px 0px 0px #171b2d;

    
  }

  .server-btn:active,
  .server-btn:focus,
  .server-btn:hover{
   background-color: #fff;
   outline: none;



  }
  
  .button-box{
  width: 99%;
  
  } 		
  
  
      .mm-btn {
      margin: 4px;
      border-radius: 10px;
      padding: 0px;
      text-align: center;
      border: 0px solid #4b6464;
      background-color: #4b6464;
      box-shadow: 0px 4px 0px 0px #171b2d;
    }

    .mm-btn:active,
    .mm-btn:focus,
    .mm-btn:hover {
      background-color: #20c0c0;
      box-shadow: 0px 4px 0px 0px #171b2d;
      color: #ffeba7;
      border: 0px solid gold;
      outline: none;
    }			
    
    .mm-logo {
      margin-top: 15px;
      width: 80px;
      height: 80px;
      border-radius: 9px;
    }
    
    .mm-logo-box {
      font-weight: bold;
      width: 95px;
      height: 136px;
      margin: 4px;
    }
    
    .mm-name {
      margin-top: 10px;
      font-size: 13px;
      text-align: center;
      font-weight: 650;
      color: #fff;
      width: 100%;
      height: 35px;
      display: inline-block;
      overflow: hidden;
      text-overflow: ellipsis;
      border: 0px solid #000;
    }
    
    .mm-box{
        text-align: center;
                
    }
    
        .highlight-btn { 
width:100%;
padding: 0px;
margin-top: 6px;
border-radius: 10px; 
border: 0px dodgerblue solid; 
background-color: #4b6464;
display: block;
box-shadow: 0px 4px 0px 0px #171b2d;
} 

 .highlight-btn:active,
  .highlight-btn:focus,
  .highlight-btn:hover{
   background-color: #94c5c5;
   color: #ffeba7;
   border-radius: 10px;
   box-shadow: 0px 4px 0px 0px #171b2d;
  }
  </style>
</head>
<body>
<body>
    <div class="app">
        <div class="app-box">
        <div class="app-bar">
            <div class="toggle-btn" onclick="toggleSidebar()">☰</div>
            <div class="app-logo"><img src="https://i.postimg.cc/c4BGkpRZ/logo-goaltv.png" alt="Logo"></div>
            <div class="notification" onclick="togglePopup()"><i class="bi bi-bell"></i></div>
        </div>
        </div>

        <div class="app-sidebar" id="sidebar">
            <!-- Sidebar content goes here -->
            <div class="close-btn" onclick="toggleSidebar()">×</div>
            <img src="https://i.postimg.cc/FsVd69vM/Goaltv.png" alt="Profile Picture" class="profile-picture">
            
            <button onclick="window.location.href='#';"class="sidebar-btn">
            <div class="sidebar-item"><i class="bi bi-download"></i> NS Player Download</div></button>
            
<button onclick="window.location.href='#';"class="sidebar-btn">
<div class="sidebar-item"><i class="bi bi-facebook"></i> Facebook Page</div></button>       

            
<button onclick="window.location.href='#';"class="sidebar-btn">
 <div class="sidebar-item"><i class="bi bi-messenger"></i> Messenger</div></button>   
 
 
<button onclick="window.location.href='#';"class="sidebar-btn">
<div class="sidebar-item"><i class="bi bi-telephone"></i> 09:798585784</div></button>             
            
           
            
        </div>

        <!-- Popup content -->
        <div id="popup">
            <!-- Add your popup content here -->
            <p>This is a notification popup!</p>
            <button onclick="togglePopup()">Close</button>
        </div>
    </div>    

<div class="navbar" id="navbar">
  <div class="nav-item" id="home">Live</div>
  <div class="nav-item" id="about">Yote Than</div>
  <div class="nav-item" id="services">Highlight</div>
  
</div>  

<div class="content-wrapper" id="contentWrapper">
<div id="homeContent" class="content-box">
    
<div class="matches-box">				
<div class="league-box">
<img class="league-logo"src="https://images.fotmob.com/image_resources/logo/leaguelogo/dark/87.png" alt="">	
<div class="league-name">LaLiga</div>
<ul class="details-ul"></div>

<details><summary class="summary-btn">
<li>				
<div class="container-match">
<div class="home-name">ဂီတာဖေး</div>
<div class="logo-box">
<img class="home-logo" src="https://cdn.resfu.com/img_data/equipos/1217.png?size=60x&lossy=1"/>
<div class="match-time">22:30</div>
<img class="away-logo" src="https://cdn.resfu.com/img_data/equipos/2080.png?size=60x&lossy=1"/>
</div>
<div class="away-name">ဗစ်လစ်ကာနို</div>
</div></li></summary>
<div class="details-box">
<center>
<div class="button-box">
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER1 HD							
</button>				
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER2 HD								
</button>								
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER3 HD								
</button>	
</div></center></div></details>	

<details><summary class="summary-btn">
<li>				
<div class="container-match">
<div class="home-name">ဆိုစီဒက်</div>
<div class="logo-box">
<img class="home-logo" src="https://cdn.resfu.com/img_data/equipos/2120.png?size=60x&lossy=1"/>
<div class="match-time">00:45</div>
<img class="away-logo" src="https://cdn.resfu.com/img_data/equipos/137.png?size=60x&lossy=1"/>
</div>
<div class="away-name">ဒီပို့တီဗို</div>
</div></li></summary>
<div class="details-box">
<center>
<div class="button-box">
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER1 HD							
</button>				
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER2 HD								
</button>								
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER3 HD								
</button>	
</div></center></div></details>	

<details><summary class="summary-btn">
<li>				
<div class="container-match">
<div class="home-name">ဗလင်စီယာ</div>
<div class="logo-box">
<img class="home-logo" src="https://cdn.resfu.com/img_data/equipos/2647.png?size=60x&lossy=1"/>
<div class="match-time">03:00</div>
<img class="away-logo" src="https://cdn.resfu.com/img_data/equipos/2716.png?size=60x&lossy=1"/>
</div>
<div class="away-name">ဗီလာရီရဲ</div>
</div></li></summary>
<div class="details-box">
<center>
<div class="button-box">
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER1 HD							
</button>				
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER2 HD								
</button>								
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER3 HD								
</button>	
</div></center></div></details>	

</ul></div>



<div class="matches-box">				
<div class="league-box">
<img class="league-logo"src="https://images.fotmob.com/image_resources/logo/leaguelogo/47.png" alt="">	
<div class="league-name">Premier League</div>
<ul class="details-ul"></div>

<details><summary class="summary-btn">
<li>				
<div class="container-match">
<div class="home-name">ဝက်ဟမ်း</div>
<div class="logo-box">
<img class="home-logo" src="https://cdn.resfu.com/img_data/equipos/2804.png?size=60x&lossy=1"/>
<div class="match-time">02:00</div>
<img class="away-logo" src="https://cdn.resfu.com/img_data/equipos/5652.png?size=60x&lossy=1"/>
</div>
<div class="away-name">ဘရိုက်တန်</div>
</div></li></summary>
<div class="details-box">
<center>
<div class="button-box">
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER1 HD							
</button>				
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER2 HD								
</button>								
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER3 HD								
</button>	
</div></center></div></details>	


</ul></div>


<div class="matches-box">				
<div class="league-box">
<img class="league-logo"src="https://images.fotmob.com/image_resources/logo/leaguelogo/55.png" alt="">	
<div class="league-name">Coppa Italia</div>
<ul class="details-ul"></div>

<details><summary class="summary-btn">
<li>				
<div class="container-match">
<div class="home-name">အေစီမီလန်</div>
<div class="logo-box">
<img class="home-logo" src="https://cdn.resfu.com/img_data/equipos/1692.png?size=60x&lossy=1"/>
<div class="match-time">02:30</div>
<img class="away-logo" src="https://cdn.resfu.com/img_data/equipos/609.png?size=60x&lossy=1"/>
</div>
<div class="away-name">ကယ်ဂလီယာ</div>
</div></li></summary>
<div class="details-box">
<center>
<div class="button-box">
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER1 HD							
</button>				
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER2 HD								
</button>								
<button class="server-btn" onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">
SERVER3 HD								
</button>	
</div></center></div></details>	


</ul></div>





</div>

  <div id="aboutContent" class="content-box">
<div class="mm-box">	      
  <button onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';"class="mm-btn" >
<div class="mm-logo-box">
<img class="mm-logo" src="https://www.jobsinyangon.com/loga/1852015055736604.png"alt="">				
<div class="mm-name">MRTV-4 HD</h3>
</div></button>

 <button onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/w3g3EYjBtqgJ1677679288037.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';"class="mm-btn" >
<div class="mm-logo-box">
<img class="mm-logo" src="https://i.pinimg.com/200x/af/ca/5d/afca5d4f9fb5756de13110aa7a89e69a.jpg"alt="">				
<div class="mm-name">Channel-7 HD</h3>
</div></button>

 <button onclick="window.location.href='intent://ppradio.b-cdn.net/LiveApp/streams/rHEBIW7pjQLU1677679374164.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';"class="mm-btn" >
<div class="mm-logo-box">
<img class="mm-logo" src="https://static.wikia.nocookie.net/logopedia/images/8/8b/Mahar_bawdi_TV.png"alt="">				
<div class="mm-name">Mahar bhawdi</h3>
</div></button>

 <button onclick="window.location.href='intent://tv.mahar.live:443/mahar/website.stream/mahar/website1/playlist.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';"class="mm-btn" >
<div class="mm-logo-box">
<img class="mm-logo" src="https://www.lyngsat.com/logo/tv/mm/mahar_tv_mm.png"alt="">				
<div class="mm-name">Mahar HD</h3>
</div></button>

 <button onclick="window.location.href='intent://tv.mahar.live/esports/mahar.stream/esports/mahar2/chunks.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';"class="mm-btn" >
<div class="mm-logo-box">
<img class="mm-logo" src="https://photos.live-tv-channels.org/tv-logo/mahar-esports-tv-6122-w360.webp"alt="">				
<div class="mm-name">Mahar Esport</h3>
</div></button>

 <button onclick="window.location.href='intent://l1-xl1.myanmarnet.com/relay/channelk/ch1/stream.m3u8#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';"class="mm-btn" >
<div class="mm-logo-box">
<img class="mm-logo" src="https://i.postimg.cc/PrtFN0Q5/channel-k.png"alt="">				
<div class="mm-name">Channel-K</h3>
</div></button>

</div>
  </div>

  <div id="servicesContent" class="content-box">

<div class="matches-box">				
<div class="league-box">
<img class="league-logo"src="https://res.9appsinstall.com/group3/M02/49/E5/4ZMEAFp9eV2AJJf1AAAyUOCAS7c993.png" alt="">	
<div class="league-name">Football Highlight</div>
</div>

<button class="highlight-btn" onclick="window.location.href='intent://hl.thapcam.link/hls/2light/bda/highlights/arsenal311223.mp4/playlist.m3u8?|Referer=https://watch.ezyproxy.com/#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">	
<div class="container-match">
<div class="home-name">ဖူဟန်</div>
<div class="logo-box">
<img class="home-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/9879.png"/>
<div class="match-time">2:1</div>
<img class="away-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/9825.png"/>
</div>
<div class="away-name">အာဆင်နယ်</div>
</div>	
</button>	

<button class="highlight-btn" onclick="window.location.href='intent://hl.thapcam.link/hls/2light/bda/highlights/juventus311223.mp4/playlist.m3u8?|Referer=https://watch.ezyproxy.com/#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">	
<div class="container-match">
<div class="home-name">ဂျူဗင်တပ်</div>
<div class="logo-box">
<img class="home-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/9885.png"/>
<div class="match-time">1:0</div>
<img class="away-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/8686.png"/>
</div>
<div class="away-name">ရိုးမား</div>
</div>	
</button>	

<button class="highlight-btn" onclick="window.location.href='intent://hl.thapcam.link/hls/2light/bda/highlights/alnassr311223.mp4/playlist.m3u8?|Referer=https://watch.ezyproxy.com/#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">	
<div class="container-match">
<div class="home-name">အလ်တာဝန်</div>
<div class="logo-box">
<img class="home-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/205686.png"/>
<div class="match-time">1:4</div>
<img class="away-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/101918.png"/>
</div>
<div class="away-name">အလ်နာဆာ</div>
</div>	
</button>	

<button class="highlight-btn" onclick="window.location.href='intent://hl.thapcam.link/hls/2light/bda/highlights/mu311223.mp4/playlist.m3u8?|Referer=https://watch.ezyproxy.com/#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">	
<div class="container-match">
<div class="home-name">နော့တင်ဟန်</div>
<div class="logo-box">
<img class="home-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/10203.png"/>
<div class="match-time">2:1</div>
<img class="away-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/10260.png"/>
</div>
<div class="away-name">မန်ယူ</div>
</div>	
</button>	

<button class="highlight-btn" onclick="window.location.href='intent://hl.thapcam.link/hls/2light/bda/highlights/wolves301223.mp4/playlist.m3u8?|Referer=https://watch.ezyproxy.com/#Intent;action=android.intent.action.VIEW;scheme=https;type=video/mp4;end';">	
<div class="container-match">
<div class="home-name">ဝုလ်</div>
<div class="logo-box">
<img class="home-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/8602.png"/>
<div class="match-time">3:0</div>
<img class="away-logo" src="https://images.fotmob.com/image_resources/logo/teamlogo/8668.png"/>
</div>
<div class="away-name">အဲဗာတန်</div>
</div>	
</button>				


</div>





  </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function () {
  const navbar = document.getElementById("navbar");
  const contentWrapper = document.getElementById("contentWrapper");

  const hammer = new Hammer(contentWrapper);

  // Set the initial section to "homeContent"
  showSection("homeContent");
  activateButton("home");

  hammer.on("swiperight", function () {
    navigate("previous");
  });

  hammer.on("swipeleft", function () {
    navigate("next");
  });

  navbar.addEventListener("click", function (event) {
    if (event.target.classList.contains("nav-item")) {
      const sectionId = event.target.id + "Content";
      showSection(sectionId);
      activateButton(event.target.id);
    }
  });

  function navigate(direction) {
    const homeContent = document.getElementById("homeContent");
    const aboutContent = document.getElementById("aboutContent");
    const servicesContent = document.getElementById("servicesContent");

    switch (direction) {
      case "previous":
        if (aboutContent.style.display === "block") {
          showSection("homeContent");
          activateButton("home");
        } else if (servicesContent.style.display === "block") {
          showSection("aboutContent");
          activateButton("about");
        }
        break;
      case "next":
        if (homeContent.style.display === "block") {
          showSection("aboutContent");
          activateButton("about");
        } else if (aboutContent.style.display === "block") {
          showSection("servicesContent");
          activateButton("services");
        }
        break;
      // Add more cases for additional sections if needed
    }
  }

  function showSection(sectionId) {
    const homeContent = document.getElementById("homeContent");
    const aboutContent = document.getElementById("aboutContent");
    const servicesContent = document.getElementById("servicesContent");

    homeContent.style.display = sectionId === "homeContent" ? "block" : "none";
    aboutContent.style.display = sectionId === "aboutContent" ? "block" : "none";
    servicesContent.style.display = sectionId === "servicesContent" ? "block" : "none";
  }

  function activateButton(buttonId) {
    const buttons = document.querySelectorAll(".nav-item");
    buttons.forEach((button) => {
      button.classList.remove("active");
    });

    const activeButton = document.getElementById(buttonId);
    activeButton.classList.add("active");
  }
});


</script>


   <script>
        // Define the togglePopup function
        function togglePopup() {
            var popup = document.getElementById('popup');
            popup.style.display = (popup.style.display === 'none' || popup.style.display === '') ? 'block' : 'none';
        }
    </script>
    <script>
        function toggleSidebar() {
    var sidebar = document.getElementById('sidebar');
    var toggleBtn = document.querySelector('.toggle-btn');
    var closeBtn = document.querySelector('.close-btn');
    var sidebarWidth = window.getComputedStyle(sidebar).width;

    if (sidebarWidth === '0px' || sidebarWidth === '0px') {
        sidebar.style.width = '250px';
        toggleBtn.style.display = 'none'; // Hide toggle button when sidebar is open
        closeBtn.style.display = 'block'; // Show close button when sidebar is open
    } else {
        sidebar.style.width = '0';
        toggleBtn.style.display = 'block'; // Show toggle button when sidebar is closed
        closeBtn.style.display = 'none'; // Hide close button when sidebar is closed
    }
}

    </script>
</body>
<script>
    document.addEventListener('DOMContentLoaded', function () {
      var detailsElements = document.querySelectorAll('details');

      detailsElements.forEach(function (details) {
        details.addEventListener('toggle', function (event) {
          if (event.target.open) {
            // Close other details elements 
            detailsElements.forEach(function (otherDetails) {
              if (otherDetails !== details) {
                otherDetails.removeAttribute('open');
              }
            });
          }
        });
      });
    });
</script>
</html>
