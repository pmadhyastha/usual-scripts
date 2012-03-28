#!/bin/sed -f
s=^"=`` =g
s=\([ ([{<]\)"=\1 `` =g


#s=\.\.\.= ... =g
#s=[,;:@#$%&]= & =g

#s=\([^.]\)\([.]\)\([])}>"']*\)[ 	]*$=\1 \2\3 =g
#s=[?!]= & =g

s=[][(){}<>]= & =g
s/(/-LRB-/g
s/)/-RRB-/g
s/\[/-LSB-/g
s/\]/-RSB-/g
s/{/-LCB-/g
s/}/-RCB-/g
#s=--= -- =g

#s=$= =
#s=^= =

s="= '' =g
s=\([^']\)' =\1 ' =g
s='\([sSmMdD]\) = '\1 =g
s='ll = 'll =g
s='re = 're =g
s='ve = 've =g
s=n't = n't =g
s='LL = 'LL =g
s='RE = 'RE =g
s='VE = 'VE =g
s=N'T = N'T =g

s= \([Cc]\)annot = \1an not =g
s= \([Dd]\)'ye = \1' ye =g
s= \([Gg]\)imme = \1im me =g
s= \([Gg]\)onna = \1on na =g
s= \([Gg]\)otta = \1ot ta =g
s= \([Ll]\)emme = \1em me =g
s= \([Mm]\)ore'n = \1ore 'n =g
s= '\([Tt]\)is = '\1 is =g
s= '\([Tt]\)was = '\1 was =g
s= \([Ww]\)anna = \1an na =g
s= \([Ww]\)haddya = \1ha dd ya =g
s= \([Ww]\)hatcha = \1ha t cha =g

s=  *= =g
s=^ *==g
