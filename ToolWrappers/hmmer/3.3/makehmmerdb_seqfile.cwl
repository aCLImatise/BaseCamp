class: CommandLineTool
id: makehmmerdb_seqfile.cwl
inputs:
- id: in_binary_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makehmmerdb
- seqfile
