class: CommandLineTool
id: sparse_mapDB.cwl
inputs:
- id: dbname
  doc: 'Name for the database folder. REQUIRED. '
  type: string
  inputBinding:
    prefix: --dbname
- id: map_db
  doc: 'Name for the sub-database. REQUIRED. '
  type: string
  inputBinding:
    prefix: --mapDB
- id: seq_list
  doc: A tab-delimited list of reference to include. It can be generated by "SPARSE.py
    query". REQUIRED.
  type: string
  inputBinding:
    prefix: --seqlist
- id: n_thread
  doc: 'Number of threads to use. Default: 20 '
  type: string
  inputBinding:
    prefix: --n_thread
- id: malt
  doc: Use MALT instead of minimap2 [default]
  type: boolean
  inputBinding:
    prefix: --malt
- id: append
  doc: Append to existing database instead of overwrite [default]
  type: boolean
  inputBinding:
    prefix: --append
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- mapDB
