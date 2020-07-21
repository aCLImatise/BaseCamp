class: CommandLineTool
id: ../../../samtools_targetcut.cwl
inputs:
- id: q
  doc: ''
  type: long
  inputBinding:
    prefix: -Q
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: zero
  doc: ''
  type: string
  inputBinding:
    prefix: '-0'
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- targetcut
