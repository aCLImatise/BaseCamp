class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seroba_createDBs_kmer_size.cwl
inputs:
- id: se_rob_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: created_bs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: database_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: km_er_size
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- seroba
- createDBs
- kmer_size
