<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Dena'ina Featured Word ("Word of the Day") code for dashboard widget -->
<!-- by Gary Holton -->
<!-- November 2007 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<style type="text/css">
#audioplayer
{
	border: thin #663300;
	text-align:center;
	position:absolute;
	font-family:"Lucida Grande", Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: white;

}

#entry {
	font-family:"Lucida Grande", Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: white;
	}

.word
{
	font-weight: bold;
	font-size: 16px;
}
.gloss
{
	font-size: 12px;
}

.ex
{
	font-weight: bold;
}

.exgloss
{
	font-size:12px;
}

a:link {
   color: #FFFFFF;
		text-decoration: none;
}

a:visited {
        color: #FFFFFF;
		text-decoration: none;
}

a:hover {
        color: #FFFFFF;
		text-decoration: underline;
}

a:active {
        color: #FFFFFF;
		text-decoration: none;
}
</style>

</head>

<body>
<!-- get list of word ids -->
<cfquery name="getids" datasource="emeld">
select ID from DATA_WORDS
</cfquery>
<!--- this is causing index out of range. removed. (LM)
<cfset days = DateDiff("y","03/01/2006",Now())>
<cfset weeks = Round(days / 7)>
--->
<cfset max_id = #getids.recordcount#>
<cfset L_wordIDs = ValueList(getids.id)>

<cfif IsDefined("URL.random") AND (#URL.random# eq 1)>
    <!-- get random word -->
    <cfset myID = ListGetAt(L_wordIDs, RandRange(0,#max_id#))>
<cfelse>
    <!-- get ID for current word -->
    <cfset myID = ListGetAt(L_wordIDs, #max_id#)>
</cfif>
<cfquery name="getword" datasource="emeld">
SELECT
dw.ID,
dw.WORD,
dw.GLOSS,
dw.LITERAL,
dw.AUDIO,
dw.SOURCE,
dw.DIALECT,
dw.EXAMPLE,
dw.EXAMPLEGLOSS,
dw.WORDDATE
FROM DATA_WORDS dw
where ID=#myID#
</cfquery>
<cfset audioFile = "http://qenaga.kaipumakani.org/media/audio/words/" & #getword.AUDIO#>

<div id="entry">

<span class="word"><cfoutput>#getword.word#</cfoutput></span><br />
<span class="gloss"><cfoutput>#getword.gloss#</cfoutput></span>

<br /><br />


<span class="ex"><cfoutput>#getword.example#</cfoutput></span><br />
<span class="exgloss"><cfoutput>#getword.examplegloss#</cfoutput></span>
</div>

<br />
<div id="audioplayer">

Listen:
<cfoutput>
	<audio controls>
    <source src="#audioFile#" type="audio/mp3">
      <p>Your browswer does not support HTML5 audio.</p>
  </audio>
</cfoutput>
<!-- word source -->
<!--
<cfif #getword.Source# neq "">
<br /><br />
<i>Source</i>:
<cfoutput>
<a href="javascript:showSource('http://qenaga.org/wod-today.cfm?id=#myID#');">
#getword.Source#
</a>
</cfoutput>
-->
</cfif>
</div>


</body>
</html>
