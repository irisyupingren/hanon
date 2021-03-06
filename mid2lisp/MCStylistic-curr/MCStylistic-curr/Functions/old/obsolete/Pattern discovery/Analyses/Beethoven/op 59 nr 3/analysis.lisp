#| Tom Collins
   Tuesday 4 May 2010
   Incomplete |#

#| The purpose is to apply SIACT to Beethoven's
String Quartet in C Major, op 59 nr 3, 1st mvt,
bars 30-40. |#

; REQUIRED PACKAGES:
; (in-package :common-lisp-user)
(load
 (concatenate
  'string
  "/Applications/CCL/Lisp code/Pattern discovery"
  "/SIACT/compactness-trawl.lisp"))
(load
 (concatenate
  'string
  "/Applications/CCL/Lisp code/Pattern discovery"
  "/SIACT/evaluation-for-SIACT.lisp"))
(load
 (concatenate
  'string
  "/Applications/CCL/Lisp code/File conversion"
  "/hash-tables.lisp"))
(load
 (concatenate
  'string
  "/Applications/CCL/Lisp code/Pattern discovery"
  "/structural-inference-algorithm.lisp"))
(load
 (concatenate
  'string
  "/Applications/CCL/Lisp code/File conversion"
  "/text-files.lisp"))

#| Step 1 - Set parameters. |#
(setq *compact-thresh* 2/3)
(setq *cardina-thresh* 3)

#| Step 2 - Set pathnames. |#
(setq
 *datapath*
 (concatenate
  'string
  "/Applications/CCL/Lisp code/Pattern discovery"
  "/Datasets/Beethoven/op 59 nr 3/dataset.lisp"))
(setq
 *write2path*
 (concatenate
  'string
  "/Applications/CCL/Lisp code/Pattern discovery"
  "/Analyses/Beethoven/op 59 nr 3/Write to files"))

#| Step 3 - Create dataset. |#
(load *datapath*)
(progn
  (setq
   dataset-1-0-1-1-0
   (orthogonal-projection-unique-equalp
    dataset '(1 0 1 1 0)))
  (identity "Yes!"))
#|
(progn
  (setq
   dataset-1-1*-0-1-0
   (sort-dataset-asc
    (mod-column
     dataset-1-1-0-1-0 12 1)))
  (identity "Yes!"))
|#
; size of full dataset is 86.

#| Step 4 - Run SIA on projection (1 0 1 1 0). |#
(time
 (SIA-reflected
  dataset-1-0-1-1-0
  (concatenate
   'string *write2path* "/(1 0 1 1 0) SIA") 3655))
; 0.357236 seconds.

#| Step 5 - Run SIACT on projection (1 0 1 1 0). |#
(progn
  (setq
   SIA-1-0-1-1-0
   (read-from-file
    (concatenate
     'string *write2path* "/(1 0 1 1 0) SIA 1.txt")))
  (time
   (compactness-trawler
    SIA-1-0-1-1-0 dataset-1-0-1-1-0
    (concatenate
     'string
     *write2path* "/(1 0 1 1 0) CT 1.txt")
    *compact-thresh* *cardina-thresh*)))
; 0.025025 seconds.
(length SIA-1-0-1-1-0)
; size of SIA-output is 2334.

#| Step 6 - Results for projection (1 0 1 1 0). |#
(progn
  (setq
   SIACT-1-0-1-1-0
   (read-from-file
    (concatenate
     'string *write2path* "/(1 0 1 1 0) CT 1.txt")))
  (time
   (setq
    hash-1-0-1-1-0
    (evaluate-variables-of-patterns2hash
     SIACT-1-0-1-1-0 dataset-1-0-1-1-0))))
; 0.006446 seconds.

(length hash-1-0-1-1-0)
; TP + FP = 37.

(write-to-file-balanced-hash-table
 hash-1-0-1-1-0
 (concatenate
  'string *write2path* "/(1 0 1 1 0) hash.txt"))
#| Comments - . |#

