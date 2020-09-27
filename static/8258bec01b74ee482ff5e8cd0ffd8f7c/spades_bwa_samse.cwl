class: CommandLineTool
id: spades_bwa_samse.cwl
inputs:
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sam_se
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in_do_tsai
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- spades-bwa
- samse
