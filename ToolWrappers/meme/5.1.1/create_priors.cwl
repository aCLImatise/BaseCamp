class: CommandLineTool
id: create_priors.cwl
inputs:
- id: in_alpha
  doc: "(default 1.0)\n--beta <double> (default 10000.0)\n--num-bins <int> (default\
    \ 100)\n--o <output dir> (default=createpriors_out)\n--oc <output dir> (default=createpriors_out)\n\
    --parse-genomic-coord\n--psp\n--verbosity [1|2|3|4] (default 2)\n--version\n"
  type: long
  inputBinding:
    prefix: --alpha
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_wiggle_file
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
- create-priors
