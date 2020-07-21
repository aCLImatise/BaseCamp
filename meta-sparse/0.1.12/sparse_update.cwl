class: CommandLineTool
id: ../../../sparse_update.cwl
inputs:
- id: dbname
  doc: 'Name for the database. REQUIRED. '
  type: string
  inputBinding:
    prefix: --dbname
- id: seq_list
  doc: 'A tab-delimited list of references. Needs to be in the same format as the
    output of "SPARSE query". REQUIRED. '
  type: string
  inputBinding:
    prefix: --seqlist
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- update
