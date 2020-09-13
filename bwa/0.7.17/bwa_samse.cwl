class: CommandLineTool
id: ../../../bwa_samse.cwl
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
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_do_tsai
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bwa
- samse
