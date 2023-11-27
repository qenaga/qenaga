<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
  <!-- Created by Sadie Williams October 2005 -->
  
<!--- display archive of feature words (also known as Words of the Day) --->
<!--- uses words in DATA_WORDS table --->
<html>
<head>
	<title>Dena'ina Qenaga -- Featured Words Archive</title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
<link rel="stylesheet" type="text/css" href="qenaga.css" />
<meta http-equiv="imagetoolbar" content="no" />
</head>
<cfquery datasource="Emeld" name="getWords">
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
ORDER BY ID 
</cfquery>
<body>
	<div id="banner">
	<div id="nav">
		<ul>
			<li><a href="people.html">People</a></li>
			<li><a href="history.html">History</a></li>
			<li><a href="literature.html">Literature</a></li>
			<li><a id="current" href="learning.html">Learning</a></li>
			<li><a href="language.html" >Language</a></li>
			<li><a href="/archive/">Archive</a></li>	
			<li><a href="/">Home</a></li>
			
			
		</ul>
	</div>
	</div>
	<div id="leftblock">
		<div align="center"><img src="images/wod.jpg" /></div>
		<div id="left-nav">
		<ul>
			<li><a href="learning.html" >Learning</a></li>
			<li><a href="dli.html">Dena'ina Language Institute</a></li>
			<li><a href="revitalization.html">Language Revitalization</a></li>
			<!-- <li><a href="curriculum.html">Curriculum</a></li> -->
			<li><a href="songs.html">Songbook</a></li>
			<li><a href="writing.html">Writing</a></li>
			<li><a href="alphabet.html">Dena'ina Alphabet</a></li>
			<li><a href="phrases.html">Nondalton Phrasebook</a></li>
			<li><a href="keywords.html">Key Words</a></li>
			<li><a href="dtd.html">Dena'ina Topical Dictionary</a></li>
			<li><a href="wod.cfm" id="current">Featured Words</a></li>
			<li><a href="upperinletlessons.html">Upper Inlet Lessons</a></li>
            <li><a href="http://web.kpc.alaska.edu/denaina/">Kenai People's Language</a></li>
            <li><a href="http://denaina.anchoragemuseum.org/" target="_new">Dena'inaq' Huch'ulyeshi</a></li>
			<li><a href="bookshelf.html">Dena'ina Bookshelf</a></li>
            <li><a href="verbs_and_sentences/index.html">DLI 2007 Materials</a></li>
			<!-- <li><a href="diy.html">Do It Yourself</a></li> -->
		</ul>
		</div>
	</div>

	<div id="rightblock">
	<h1 align="center">Featured Word Archive</h1>
	<p>The Featured Word Archive contains Dena'ina words and audio posted on the <a href="http://groups.yahoo.com/group/Qenaga/" target="_blank">Qenaga email list</a>.  For a complete list of words without audio visit the <a href="http://groups.yahoo.com/group/Qenaga/" target="_blank">Qenaga email list website</a>. 
</p>
	<cfoutput>
		<table align="center" cellpadding="5" width="90%">
			<tr valign="top">
			<td>Dena'ina</td>
			<td>English</td>
			<td>Audio</td>
			</tr>
		<cfloop query="getWords">
		
			<tr class="shade" valign="top">
				<td><span class="den">#word#</span></td>
				<td>#gloss#</td>
				
				<td width="120" align="center">
				<a href="JavaScript:;" onclick="window.open('wod-listen.cfm?id=#ID#&audio=#AUDIO#','','resizable=yes,status=yes,scrollbars=yes,titlebar=no, width=500,height=350,left=200,screenx=40,top=100,screeny=20');">
				Click to listen</a>

</td>
</tr>

	
		<tr valign="top" class="shade">
			<td valign="bottom"><cfif #dialect# neq""><small>Dialect: #dialect#</small><cfelse>&nbsp;</cfif></td>
			<td colspan="3"><cfif #example# neq ""><span class="den">#example#</span><br>
				<span class="eng">#examplegloss#</span></td></cfif>
		</tr>
	
	
	<cfif #source# neq "">
		<tr valign="top" class="shade">
			<td>&nbsp;</td>
			<td colspan="3"><span class="fineprint"><i>Source:</i> #SOURCE#</span></td>
		</tr>
	</cfif>
			</cfloop>
		</table>
	</cfoutput>
	<!-- These line breaks push footer into proper position. Remove them when you add content to the page. -->
		<br><br><br><br><br><br>
		
		
</div>
<table width="90%" align="center">
	<tr><td><br /><hr /></td></tr>
	<tr>
		<td align="justify"><p class="fineprint">
Materials on this site are copyrighted by the original authors, the speakers whose voices are recorded, and the Alaska
Native Language Archive. Materials may be used freely for non-commercial, educational purposes as specified in the <a href="license.html">license
agreement</a>. Alaska Native Language Center Archive materials made available through the Dena'ina Qenaga Digital Archive may be subject to more
restrictive conditions of use as specified by the original depositors.
</p>
<p  class="fineprint">
Dena'ina Qenaga website copyright &copy; 2004-<cfoutput>#Year(NOW())#</cfoutput>. Suggestions for future development are welcome. If you have questions or comments about this site, please contact
the DATA Project: denaina [dot] qenaga [at] gmail [dot] com
</p>
		</td>
	</tr>
</table>		
	
</body>
</html>

