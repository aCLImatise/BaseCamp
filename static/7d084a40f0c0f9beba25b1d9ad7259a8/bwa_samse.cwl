class: CommandLineTool
id: ../../../bwa_samse.cwl
inputs:
- id: n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_do_tsai
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- samse
