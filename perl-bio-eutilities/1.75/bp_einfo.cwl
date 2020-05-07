class: CommandLineTool
id: bp_einfo.cwl
inputs:
- id: e
  doc: /--email Valid email (required by NCBI policy)
  type: boolean
  inputBinding:
    prefix: -e
- id: d
  doc: /--db/--database NCBI database to query (default = none, which shows available
    databases)
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: /--field print out information about a specific field code (default = none)
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: /--link print out information about a specific link name (default = none)
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: /--out outfile (default = STDOUT)
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_einfo
