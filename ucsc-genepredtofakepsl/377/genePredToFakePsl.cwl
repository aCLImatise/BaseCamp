class: CommandLineTool
id: genePredToFakePsl.cwl
inputs:
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_tbl
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: psl_out
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cds_out
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: q_sizes
  doc: Read in query sizes to fixup qSize and qStarts
  type: string
  inputBinding:
    prefix: -qSizes
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToFakePsl
