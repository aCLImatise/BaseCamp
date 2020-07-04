class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Gap2Seq.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: fuz
  doc: ''
  type: string
  inputBinding:
    prefix: --fuz
- id: solid
  doc: ''
  type: string
  inputBinding:
    prefix: --solid
outputs: []
cwlVersion: v1.1
baseCommand:
- Gap2Seq
