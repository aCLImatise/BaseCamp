class: CommandLineTool
id: ReadSeq_split.cwl
inputs:
- id: seq_file_splitter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: seq_per_split
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- split
