#!/usr/bin/perl
# $latex	= 'platex -src-specials -file-line-error -interaction=nonstopmode -halt-on-error %O %S';
$latex	= 'uplatex %O -src-specials -shell-escape -interaction=nonstopmode -halt-on-error -synctex=1 -kanji=utf8 %S';
$bibtex	= 'upbibtex %O %B -kanji=utf8';
$dvipdf = 'dvipdfmx %O -o %D %S';
$max_repeat = 3;
$pdf_mode = 3;
$pvc_view_file_via_temporary = 0;
