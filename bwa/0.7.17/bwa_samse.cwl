class: CommandLineTool
id: bwa_samse.cwl
inputs:
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sai
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- samse
