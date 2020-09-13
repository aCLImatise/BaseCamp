class: CommandLineTool
id: ../../../create_priors.cwl
inputs:
- id: in_alpha
  doc: (default 1.0)
  type: double
  inputBinding:
    prefix: --alpha
- id: in_beta
  doc: (default 10000.0)
  type: double
  inputBinding:
    prefix: --beta
- id: in_num_bins
  doc: (default 100)
  type: long
  inputBinding:
    prefix: --num-bins
- id: in_o
  doc: (default=createpriors_out)
  type: string
  inputBinding:
    prefix: --o
- id: in_oc
  doc: (default=createpriors_out)
  type: string
  inputBinding:
    prefix: --oc
- id: in_parse_genomic_coord
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parse-genomic-coord
- id: in_psp
  doc: ''
  type: boolean
  inputBinding:
    prefix: --psp
- id: in_verbosity
  doc: '[1|2|3|4] (default 2)'
  type: boolean
  inputBinding:
    prefix: --verbosity
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
