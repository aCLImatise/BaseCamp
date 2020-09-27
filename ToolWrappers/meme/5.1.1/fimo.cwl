class: CommandLineTool
id: fimo.cwl
inputs:
- id: in_alpha
  doc: "(default 1.0)\n--bfile <background file> (DNA and protein use NRDB by default)\n\
    --max-stored-scores <int> (default=100000)\n--max-strand\n--motif <id> (default=all)\n\
    --motif-pseudo <float> (default=0.1)\n--no-qvalue\n--norc\n--o <output dir> (default=fimo_out)\n\
    --oc <output dir> (default=fimo_out)\n--parse-genomic-coord\n--psp <PSP filename>\
    \ (default none)\n--prior-dist <PSP distribution filename> (default none)\n--qv-thresh\n\
    --skip-matched-sequence\n--text\n--thresh <float> (default = 1e-4)\n--verbosity\
    \ [1|2|3|4] (default 2)\n--version (print the version and exit)"
  type: double
  inputBinding:
    prefix: --alpha
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fimo
