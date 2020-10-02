class: CommandLineTool
id: sparse_predict.cwl
inputs:
- id: in_dbname
  doc: Name for the database folder. REQUIRED
  type: Directory
  inputBinding:
    prefix: --dbname
- id: in_map_db
  doc: "Comma delimited names for sub-databases. REQUIRED.\nDefault: representative,subpopulation,Virus"
  type: string
  inputBinding:
    prefix: --mapDB
- id: in_workspace
  doc: Folder name for all outputs and intermediate results. REQUIRED.
  type: Directory
  inputBinding:
    prefix: --workspace
- id: in_r_one
  doc: SE read or first part of PE reads. REQUIRED.
  type: long
  inputBinding:
    prefix: --r1
- id: in_r_two
  doc: Second part of PE reads.
  type: long
  inputBinding:
    prefix: --r2
- id: in_n_thread
  doc: "Number of threads to use. Default: 20\n"
  type: long
  inputBinding:
    prefix: --n_thread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sparse
- predict
