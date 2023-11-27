---
title: Alphabet
parent: Learning
nav_order: 6
image: alphabet.jpg
permalink: learning/alphabet
credit: "These recordings were made in Feb 2005 for the Inland Dena'ina Key Words, edited by James Kari. The original publication, including an audio CD, is available from Dena'inaq' Titaztunt."
layout: alphabet
---

# Dena'ina Alphabet


The Dena'ina alphabet consists of a subset of letters and letter combinations ("blends") from the English alphabet, together with one special character, known as the "barred-l". This is an "L" with a slash through it. Where the barred-l symbol is not available, the backslash <span class="den">\\</span> is sometimes used instead. 

Some blended consonants do not occur in the English alphabet. In particular, the apostrophe is often used in combination with another letter (and may occur by itself as a letter). Two "hatted" symbols <span class="den">&#375;</span> and <span class="den">&#293;</span> are used; these may be subsituted with <span class="den">y</span> and <span class="den">hh</span>, repectively. There is no vowel <span class="den">o</span>. The letters <span class="den">f</span> and <span class="den">r</span> are used only in borrowed Russian words. This gives a total of 41 Dena'ina letters or letter combinations.


> <span class="den">' a b ch ch' d dl dz e f g gg gh h &#293; i j k k' l ł m n  q q' r s sh t t' tl tl' ts ts' u v w x y &#375; z zh</span>

Although some of the letters and letter combinations in the Dena'ina alphabet are identical to those in the English alphabet, they are not necessarily pronounced in the same way. For example, the Dena'ina letter <span class="den">ch</span> is pronounced very similarly  to that in English 'cheese', but the Dena'ina letter <span class="den">h</span> is a very different sound than the English one.

Below are some words that illustrate the sounds in the Dena'ina Alphabet.  They are spoken by Helen Dick of Lime Village. 

{% for row in site.data.alphabet %}
<div class="audiobox">
<div class="letter">{{row.letter}}</div>
<div class="lettertext">
<span class="den">{{row.den}}</span><br/>
<span class="eng">{{row.eng}}</span>
</div>
<div class="audio">
<audio src="{{site.baseurl}}/{{site.audiopath}}/alphabet/{{row.audio}}" controls type="audio/mpeg">Your browser does not support the audio tag.</audio>

</div></div>
{% endfor %}