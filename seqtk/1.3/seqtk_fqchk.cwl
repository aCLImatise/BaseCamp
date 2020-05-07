class: CommandLineTool
id: seqtk_fqchk.cwl
inputs:
- id: '20'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- fqchk
