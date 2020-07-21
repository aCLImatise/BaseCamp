class: CommandLineTool
id: ../../../bedGeneParts.cwl
inputs:
- id: pro_start
  doc: '- start of promoter relative to txStart, default -100'
  type: string
  inputBinding:
    prefix: -proStart
- id: pro_end
  doc: '- end of promoter relative to txStart, default 50'
  type: string
  inputBinding:
    prefix: -proEnd
- id: part
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedGeneParts
