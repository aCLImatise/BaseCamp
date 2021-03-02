class: CommandLineTool
id: seroba_createDBs_kmer_size.cwl
inputs:
- id: in_se_rob_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_created_bs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_database_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_km_er_size
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seroba
- createDBs
- kmer_size
