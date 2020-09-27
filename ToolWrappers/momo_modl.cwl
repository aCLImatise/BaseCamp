class: CommandLineTool
id: momo_modl.cwl
inputs:
- id: in_default_momooutoc_output
  doc: "(default: momo_out)\n--oc <output dir> (default: momo_out)\n--psm-type comet|ms-gf+|tide|percolator\n\
    --sequence-column [column name]\n--width [positive odd integer] (default: 7)\n\
    --protein-database <protein sequence file> (default: None)\n--filter [field],lt|le|eq|ge|gt,[threshold]\
    \ (default: no filter)\n--remove-unknowns T|F (default: F)\n--eliminate-repeats\
    \ [positive odd integer or 0 for no elimination] (default: width)\n--min-occurrences\
    \ [non-negative] (default: 5)\n--single-motif-per-mass\n--hash-fasta [positive\
    \ integer or 0 for linear search] (default: 0)\n--seed [non-negative integer]\n\
    --db-background\n--max-motifs [positive integer] (default: 100)\n--max-iterations\
    \ [positive integer] (default: 50)\n--max-no-decrease [positive integer] (default:\
    \ 10)\n--verbosity 1|2|3|4|5 (default: 2)\n--version (print the version and exit)\n"
  type: long
  inputBinding:
    prefix: --o
- id: in_ptm_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- momo
- modl
