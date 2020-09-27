class: CommandLineTool
id: ReadSeq_split.cwl
inputs:
- id: in_seq_file_splitter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_seq_per_split
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ReadSeq
- split
