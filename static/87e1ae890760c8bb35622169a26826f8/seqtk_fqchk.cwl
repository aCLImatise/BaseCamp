class: CommandLineTool
id: ../../../seqtk_fqchk.cwl
inputs:
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- fqchk
