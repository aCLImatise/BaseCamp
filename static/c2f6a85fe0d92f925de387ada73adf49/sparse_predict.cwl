class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sparse_predict.cwl
inputs:
- id: dbname
  doc: 'Name for the database folder. REQUIRED '
  type: string
  inputBinding:
    prefix: --dbname
- id: map_db
  doc: 'Comma delimited names for sub-databases. REQUIRED. Default: representative,subpopulation,Virus'
  type: string
  inputBinding:
    prefix: --mapDB
- id: workspace
  doc: Folder name for all outputs and intermediate results. REQUIRED.
  type: string
  inputBinding:
    prefix: --workspace
- id: r_one
  doc: 'SE read or first part of PE reads. REQUIRED. '
  type: string
  inputBinding:
    prefix: --r1
- id: r_two
  doc: Second part of PE reads.
  type: string
  inputBinding:
    prefix: --r2
- id: n_thread
  doc: 'Number of threads to use. Default: 20 '
  type: string
  inputBinding:
    prefix: --n_thread
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- predict
