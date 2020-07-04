class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/makehmmerdb_binaryfile.cwl
inputs:
- id: make_hmmer_db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: binary_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- makehmmerdb
- binaryfile
