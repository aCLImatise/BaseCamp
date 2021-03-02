class: CommandLineTool
id: bp_local_taxonomydb_query.pl.cwl
inputs:
- id: in_taxonid
  doc: DESCRIPTION
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_local_taxonomydb_query.pl
