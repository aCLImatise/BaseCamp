class: CommandLineTool
id: bedGeneParts.cwl
inputs:
- id: part
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pro_start
  doc: promoter relative to txStart, default -100
  type: string
  inputBinding:
    prefix: -proStart
- id: pro_end
  doc: promoter relative to txStart, default 50
  type: string
  inputBinding:
    prefix: -proEnd
outputs: []
cwlVersion: v1.1
baseCommand:
- bedGeneParts
