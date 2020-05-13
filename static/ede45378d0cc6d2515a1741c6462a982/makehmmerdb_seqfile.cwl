class: CommandLineTool
id: makehmmerdb_seqfile.cwl
inputs:
- id: binary_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- makehmmerdb
- seqfile
