; NB need to code A**** at some point.

(setq
 A
 '((0 64) (1/2 63) (1 62) (3/2 61) (2 62) (5/2 60)))

(setq
 A2
 '((55/2 71 1/2) (28 70 1/2) (57/2 69 1/2)
   (29 68 1/2) (59/2 67 1/2)))

(setq
 Avar
 '((1/2 63) (1 62) (3/2 61) (2 62) (5/2 60)))

(setq B '((3 67 3/2) (9/2 66 1/2) (5 65 1)))

(setq B*1 '((51 56 3/2) (105/2 54 1/2) (53 56 1)))

(setq
 C
 '((24 67 1/2) (49/2 66 1/2) (25 67 1/2)
   (51/2 69 1/2) (26 72 3/2)))

(setq
 CA2
 '((24 67 1/2) (49/2 66 1/2) (25 67 1/2)
   (51/2 69 1/2) (26 72 3/2) (55/2 71 1/2)
   (28 70 1/2) (57/2 69 1/2)))

(setq Binv '((18 57) (39/2 58) (20 59)))

(setq
 A3
 '((18 57) (37/2 60) (19 59) (39/2 58) (20 59)
   (41/2 57)))

(setq
 D
 '((145/2 66 1/2) (73 67 1/2) (147/2 68 1/2) 
   (74 69 1/2) (149/2 68 1/2)))

(setq C* '((175/2 68) (88 69) (177/2 71) (89 70)))

(setq B*2 '((144 54) (291/2 56) (146 58)))

(setq
 D2
 '((211/2 51 1/2) (106 52 1/2) (213/2 54 1/2)
   (107 56 1/2) (215/2 57 1/2)))

(setq
 A2*
 '((186 71) (187 70) (375/2 69) (188 68)
   (377/2 67)))

(setq
 D4
 '((189 54 1/2) (379/2 55 1/2) (190 56 1/2)
   (381/2 54 1/2)))

(setq
 D5
 '((193 50 1/2) (387/2 51 1/2) (194 52 1/2)
   (389/2 53 1/2) (195 54 1/2) (391/2 55 1/2)
   (196 56 1/2) (393/2 57 1/2) (197 58 1/2) 
   (395/2 59 1/2)))

(setq
 A**
 '((216 70) (433/2 68) (217 69) (435/2 68) (218 67)
   (437/2 66)))

(setq
 B2inv
 '((75 66 3/2) (153/2 67 1/2) (77 65 1)))

(setq targets-1-1-0-1-0 (list B*1 D2))
(setq targets-1-0-1-1-0
      (list A2 B B2inv C CA2 D D4 D5))
(setq targets-1-1-0-0-0 (list ))
(setq targets-1-0-1-0-0
      (list A A** A2* A3 Avar B*2 Binv C*))
(setq targets-1-0-0-1-0 (list ))
(setq targets-1-1*-0-1-0 (list ))
(setq targets-1-0-1*-1-0 (list ))
(setq targets-1-1*-0-0-0 (list ))
(setq targets-1-0-1*-0-0 (list ))