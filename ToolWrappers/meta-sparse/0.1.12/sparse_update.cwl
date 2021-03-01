class: CommandLineTool
id: sparse_update.cwl
inputs:
- id: in_dbname
  doc: Name for the database. REQUIRED.
  type: string?
  inputBinding:
    prefix: --dbname
- id: in_seq_list
  doc: "A tab-delimited list of references. Needs to be in the same format as the\
    \ output of \"SPARSE query\". REQUIRED.\n"
  type: string?
  inputBinding:
    prefix: --seqlist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sparse
- update
