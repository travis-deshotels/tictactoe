source random.tcl
wm title . "Tic Tac Toe"
. configure -background white
set t top
set m menu
frame .$t -relief raised -bd 2
frame .1 -background white
frame .2 -background white
frame .3 -background white
menubutton .$t.file -text File -underline 0 \
			-$m .top.file.$m
menubutton .$t.help -text Help -underline 0 \
			-$m .top.help.$m
$m .$t.file.$m
$m .$t.help.$m

.$t.file.$m add command -label New -underline 0 \
			-command {exec wish41.exe tictactoe.txt;exit}
.$t.file.$m add command -label Exit -underline 0 \
			-command exit
.$t.help.$m add command -label "Help me!" -underline 0 \

pack .top -fill x
pack .top.file -side left
pack .top.help -side right

set x [image create photo -file x.gif]
set o [image create photo -file o.gif]
set no [image create photo -file no.gif]

foreach i {1 2 3} {
	foreach j {1 2 3} {
	set move($i,$j) " " } }

foreach i {1 2 3} {
	foreach j {1 2 3} {
	label .$i.$j}}

pack .1 -fill x
pack .2 -fill x
pack .3 -fill x

foreach i {1 2 3} {
	foreach j {1 2 3} {
	set move($i,$j) " " } }

foreach i {1 2 3} {
	foreach j {1 2 3} {
	global no
	.$i.$j configure -image $no
	pack .$i.$j -side left}}

bind .1.1 <Button-1> {
if {($move(1,1) == " ") && ([gameover] == "false")} {
.1.1 configure -image $x
set move(1,1) x} 
cpu}

bind .1.2 <Button-1> {
if {($move(1,2) == " ") && ([gameover] == "false")} {
.1.2 configure -image $x
set move(1,2) x} 
cpu}

bind .1.3 <Button-1> {
if {($move(1,3) == " ") && ([gameover] == "false")} {
.1.3 configure -image $x
set move(1,3) x} 
cpu}

bind .2.1 <Button-1> {
if {($move(2,1) == " ") && ([gameover] == "false")} {
.2.1 configure -image $x
set move(2,1) x} 
cpu}

bind .2.2 <Button-1> {
if {($move(2,2) == " ") && ([gameover] == "false")} {
.2.2 configure -image $x
set move(2,2) x} 
cpu}

bind .2.3 <Button-1> {
if {($move(2,3) == " ") && ([gameover] == "false")} {
.2.3 configure -image $x
set move(2,3) x} 
cpu}

bind .3.1 <Button-1> {
if {($move(3,1) == " ") && ([gameover] == "false")} {
.3.1 configure -image $x
set move(3,1) x} 
cpu}

bind .3.2 <Button-1> {
if {($move(3,2) == " ") && ([gameover] == "false")} {
.3.2 configure -image $x
set move(3,2) x} 
cpu}

bind .3.3 <Button-1> {
if {($move(3,3) == " ") && ([gameover] == "false")} {
.3.3 configure -image $x
set move(3,3) x} 
cpu}

proc cpu {} {
if {[gameover] == "false"} {
global move
global o
set flag false
#######################  1 ACROSS  ######################
if {($move(1,2) == "o") && ($move(1,3) == "o") && ($move(1,1) == " ") && ($flag == "false")} {
set move(1,1) o; .1.1 configure -image $o; set flag true}

if {($move(1,1) == "o") && ($move(1,3) == "o") && ($move(1,2) == " ") && ($flag == "false")} {
set move(1,2) o; .1.2 configure -image $o; set flag true}

if {($move(1,1) == "o") && ($move(1,2) == "o") && ($move(1,3) == " ") && ($flag == "false")} {
set move(1,3) o; .1.3 configure -image $o; set flag true}
#######################  2 ACROSS  ######################
if {($move(2,2) == "o") && ($move(2,3) == "o") && ($move(2,1) == " ") && ($flag == "false")} {
set move(2,1) o; .2.1 configure -image $o; set flag true}

if {($move(2,1) == "o") && ($move(2,3) == "o") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(2,1) == "o") && ($move(2,2) == "o") && ($move(2,3) == " ") && ($flag == "false")} {
set move(2,3) o; .2.3 configure -image $o; set flag true}
#######################  3 ACROSS  ######################
if {($move(3,2) == "o") && ($move(3,3) == "o") && ($move(3,1) == " ") && ($flag == "false")} {
set move(3,1) o; .3.1 configure -image $o; set flag true}

if {($move(3,1) == "o") && ($move(3,3) == "o") && ($move(3,2) == " ") && ($flag == "false")} {
set move(3,2) o; .3.2 configure -image $o; set flag true}

if {($move(3,1) == "o") && ($move(3,2) == "o") && ($move(3,3) == " ") && ($flag == "false")} {
set move(3,3) o; .3.3 configure -image $o; set flag true}
########################  1 DOWN  #######################
if {($move(2,1) == "o") && ($move(3,1) == "o") && ($move(1,1) == " ") && ($flag == "false")} {
set move(1,1) o; .1.1 configure -image $o; set flag true}

if {($move(1,1) == "o") && ($move(3,1) == "o") && ($move(2,1) == " ") && ($flag == "false")} {
set move(2,1) o; .2.1 configure -image $o; set flag true}

if {($move(1,1) == "o") && ($move(2,1) == "o") && ($move(3,1) == " ") && ($flag == "false")} {
set move(3,1) o; .3.1 configure -image $o; set flag true}
########################  2 DOWN  #######################
if {($move(2,2) == "o") && ($move(3,2) == "o") && ($move(1,2) == " ") && ($flag == "false")} {
set move(1,2) o; .1.2 configure -image $o; set flag true}

if {($move(1,2) == "o") && ($move(3,2) == "o") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(1,2) == "o") && ($move(2,2) == "o") && ($move(3,2) == " ") && ($flag == "false")} {
set move(3,2) o; .3.2 configure -image $o; set flag true}
########################  3 DOWN  #######################
if {($move(2,3) == "o") && ($move(3,3) == "o") && ($move(1,3) == " ") && ($flag == "false")} {
set move(1,3) o; .1.3 configure -image $o; set flag true}

if {($move(1,3) == "o") && ($move(3,3) == "o") && ($move(2,3) == " ") && ($flag == "false")} {
set move(2,3) o; .2.3 configure -image $o; set flag true}

if {($move(1,3) == "o") && ($move(2,3) == "o") && ($move(3,3) == " ") && ($flag == "false")} {
set move(3,3) o; .3.3 configure -image $o; set flag true}
########################  1 DIAG  #######################
if {($move(2,2) == "o") && ($move(3,3) == "o") && ($move(1,1) == " ") && ($flag == "false")} {
set move(1,1) o; .1.1 configure -image $o; set flag true}

if {($move(1,1) == "o") && ($move(3,3) == "o") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(1,1) == "o") && ($move(2,2) == "o") && ($move(3,3) == " ") && ($flag == "false")} {
set move(3,3) o; .3.3 configure -image $o; set flag true}
########################  2 DIAG  #######################
if {($move(2,2) == "o") && ($move(3,1) == "o") && ($move(1,3) == " ") && ($flag == "false")} {
set move(1,3) o; .1.3 configure -image $o; set flag true}

if {($move(1,3) == "o") && ($move(3,1) == "o") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(1,3) == "o") && ($move(2,2) == "o") && ($move(3,1) == " ") && ($flag == "false")} {
set move(3,1) o; .3.1 configure -image $o; set flag true}

	

#######################  1 ACROSS  ######################
if {($move(1,2) == "x") && ($move(1,3) == "x") && ($move(1,1) == " ") && ($flag == "false")} {
set move(1,1) o; .1.1 configure -image $o; set flag true}

if {($move(1,1) == "x") && ($move(1,3) == "x") && ($move(1,2) == " ") && ($flag == "false")} {
set move(1,2) o; .1.2 configure -image $o; set flag true}

if {($move(1,1) == "x") && ($move(1,2) == "x") && ($move(1,3) == " ") && ($flag == "false")} {
set move(1,3) o; .1.3 configure -image $o; set flag true}
#######################  2 ACROSS  ######################
if {($move(2,2) == "x") && ($move(2,3) == "x") && ($move(2,1) == " ") && ($flag == "false")} {
set move(2,1) o; .2.1 configure -image $o; set flag true}

if {($move(2,1) == "x") && ($move(2,3) == "x") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(2,1) == "x") && ($move(2,2) == "x") && ($move(2,3) == " ") && ($flag == "false")} {
set move(2,3) o; .2.3 configure -image $o; set flag true}
#######################  3 ACROSS  ######################
if {($move(3,2) == "x") && ($move(3,3) == "x") && ($move(3,1) == " ") && ($flag == "false")} {
set move(3,1) o; .3.1 configure -image $o; set flag true}

if {($move(3,1) == "x") && ($move(3,3) == "x") && ($move(3,2) == " ") && ($flag == "false")} {
set move(3,2) o; .3.2 configure -image $o; set flag true}

if {($move(3,1) == "x") && ($move(3,2) == "x") && ($move(3,3) == " ") && ($flag == "false")} {
set move(3,3) o; .3.3 configure -image $o; set flag true}
########################  1 DOWN  #######################
if {($move(2,1) == "x") && ($move(3,1) == "x") && ($move(1,1) == " ") && ($flag == "false")} {
set move(1,1) o; .1.1 configure -image $o; set flag true}

if {($move(1,1) == "x") && ($move(3,1) == "x") && ($move(2,1) == " ") && ($flag == "false")} {
set move(2,1) o; .2.1 configure -image $o; set flag true}

if {($move(1,1) == "x") && ($move(2,1) == "x") && ($move(3,1) == " ") && ($flag == "false")} {
set move(3,1) o; .3.1 configure -image $o; set flag true}
########################  2 DOWN  #######################
if {($move(2,2) == "x") && ($move(3,2) == "x") && ($move(1,2) == " ") && ($flag == "false")} {
set move(1,2) o; .1.2 configure -image $o; set flag true}

if {($move(1,2) == "x") && ($move(3,2) == "x") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(1,2) == "x") && ($move(2,2) == "x") && ($move(3,2) == " ") && ($flag == "false")} {
set move(3,2) o; .3.2 configure -image $o; set flag true}
########################  3 DOWN  #######################
if {($move(2,3) == "x") && ($move(3,3) == "x") && ($move(1,3) == " ") && ($flag == "false")} {
set move(1,3) o; .1.3 configure -image $o; set flag true}

if {($move(1,3) == "x") && ($move(3,3) == "x") && ($move(2,3) == " ") && ($flag == "false")} {
set move(2,3) o; .2.3 configure -image $o; set flag true}

if {($move(1,3) == "x") && ($move(2,3) == "x") && ($move(3,3) == " ") && ($flag == "false")} {
set move(3,3) o; .3.3 configure -image $o; set flag true}
########################  1 DIAG  #######################
if {($move(2,2) == "x") && ($move(3,3) == "x") && ($move(1,1) == " ") && ($flag == "false")} {
set move(1,1) o; .1.1 configure -image $o; set flag true}

if {($move(1,1) == "x") && ($move(3,3) == "x") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(1,1) == "x") && ($move(2,2) == "x") && ($move(3,3) == " ") && ($flag == "false")} {
set move(3,3) o; .3.3 configure -image $o; set flag true}
########################  2 DIAG  #######################
if {($move(2,2) == "x") && ($move(3,1) == "x") && ($move(1,3) == " ") && ($flag == "false")} {
set move(1,3) o; .1.3 configure -image $o; set flag true}

if {($move(1,3) == "x") && ($move(3,1) == "x") && ($move(2,2) == " ") && ($flag == "false")} {
set move(2,2) o; .2.2 configure -image $o; set flag true}

if {($move(1,3) == "x") && ($move(2,2) == "x") && ($move(3,1) == " ") && ($flag == "false")} {
set move(3,1) o; .3.1 configure -image $o; set flag true}

while {$flag == "false"} {
	set x1 [expr [random]+1]
	set x2 [expr [random]+1]
	if {($x1 != "4") && ($x2 != "4")} {
	global move
	global o
	if {$move($x1,$x2) == " "} {
	set flag true
	.$x1.$x2 configure -image $o
	set move($x1,$x2) o}}
}
gameover
}}

proc gameover {} {
global move

set flag false
set winner "no one"
###############################  ACROSS  ###############################
if {($move(1,1) == "x") && ($move(1,2) == "x") && ($move(1,3) == "x")} {
set flag true;set winner X}
if {($move(1,1) == "o") && ($move(1,2) == "o") && ($move(1,3) == "o")} {
set flag true;set winner O}

if {($move(2,1) == "x") && ($move(2,2) == "x") && ($move(2,3) == "x")} {
set flag true;set winner X}
if {($move(2,1) == "o") && ($move(2,2) == "o") && ($move(2,3) == "o")} {
set flag true;set winner O}

if {($move(3,1) == "x") && ($move(3,2) == "x") && ($move(3,3) == "x")} {
set flag true;set winner X}
if {($move(3,1) == "o") && ($move(3,2) == "o") && ($move(3,3) == "o")} {
set flag true;set winner O}
################################  DOWN  ################################
if {($move(1,1) == "x") && ($move(2,1) == "x") && ($move(3,1) == "x")} {
set flag true;set winner X}
if {($move(1,1) == "o") && ($move(2,1) == "o") && ($move(3,1) == "o")} {
set flag true;set winner O}

if {($move(1,2) == "x") && ($move(2,2) == "x") && ($move(3,2) == "x")} {
set flag true;set winner X}
if {($move(1,2) == "o") && ($move(2,2) == "o") && ($move(3,2) == "o")} {
set flag true;set winner O}

if {($move(1,3) == "x") && ($move(2,3) == "x") && ($move(3,3) == "x")} {
set flag true;set winner X}
if {($move(1,3) == "o") && ($move(2,3) == "o") && ($move(3,3) == "o")} {
set flag true;set winner O}
################################  DIAG  ################################
if {($move(1,1) == "x") && ($move(2,2) == "x") && ($move(3,3) == "x")} {
set flag true;set winner X}
if {($move(1,1) == "o") && ($move(2,2) == "o") && ($move(3,3) == "o")} {
set flag true;set winner O}

if {($move(1,3) == "x") && ($move(2,2) == "x") && ($move(3,1) == "x")} {
set flag true;set winner X}
if {($move(1,3) == "o") && ($move(2,2) == "o") && ($move(3,1) == "o")} {
set flag true;set winner O}

if {$flag == "false"} {

set flag true
foreach i {1 2 3} {
	foreach j {1 2 3} {
	if {$move($i,$j) == " "} {
	set flag false}
}}}
if {$flag == "true"} {
toplevel .over
wm title .over "The game is over"
label .over.winner -text "The winner is $winner" \
-font *-times-*-*-*--*-350-*-*-*-*-*-*
button .over.close -text close -command {destroy .over}
pack .over.winner .over.close
focus .over}
return $flag
}


