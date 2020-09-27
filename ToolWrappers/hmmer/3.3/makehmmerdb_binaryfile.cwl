class: CommandLineTool
id: makehmmerdb_binaryfile.cwl
inputs:
- id: in_make_hmmer_db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_binary_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makehmmerdb
- binaryfile
