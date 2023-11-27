<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Dena'ina Qenaga -- Featured Word</title>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- link rel="stylesheet" type="text/css" href="../qenaga.css" / -->
<!-- stylesheet link didn't seem right, changed on 2007-11-20 gmh -->
<link rel="stylesheet" type="text/css" href="qenaga.css" />
<meta http-equiv="imagetoolbar" content="no" />
</head>
<body>

<cfset WORDID = "#trim(URL.ID)#">
<cfquery datasource="Emeld" name="getWord">
SELECT
dw.ID,
dw.WORD,
dw.GLOSS,
dw.AUDIO,
dw.EXAMPLE,
dw.EXAMPLEGLOSS,
dw.SOURCE
FROM DATA_WORDS dw
WHERE
ID = #WORDID#
</cfquery>

<cfset audioFile="http://qenaga.kaipumakani.org/media/audio/words/" & #getword.AUDIO#>
<cfoutput query="getWord">

<center>
<h1>Archived Word</h1>
<audio controls>
	<source src="#audioFile#" type="audio/mp3">
		<p>Your browswer does not support HTML5 audio.</p>
</audio>

<p><span class="den">#getWord.WORD#</span><br/>#getWord.GLOSS#</p>

<p><span class="den">#getWord.EXAMPLE#</span><br/>#getWord.EXAMPLEGLOSS#</p>

<p><span class="fineprint"><i>Source:</i> #SOURCE#</span></p>

<img src="images/learn.png" alt="wave form" width="413" height="56" />
<br />
<span class="fineprint">
Unauthorized use prohibited. See complete <a href="" onClick="window.opener.location='license.html';window.close();">Terms of Use</a></span>
</cfoutput>
</center>

</body>
</html>
