class: CommandLineTool
id: ../../../bp_einfo.cwl
inputs:
- id: e_slash_email
  doc: Valid email (required by NCBI policy)
  type: boolean
  inputBinding:
    prefix: -e/--email
- id: d_slash_db_slash_database
  doc: NCBI database to query (default = none, which shows available databases)
  type: boolean
  inputBinding:
    prefix: -d/--db/--database
- id: f_slash_field
  doc: print out information about a specific field code (default = none)
  type: boolean
  inputBinding:
    prefix: -f/--field
- id: lslash_link
  doc: print out information about a specific link name (default = none)
  type: boolean
  inputBinding:
    prefix: -l/--link
- id: oslash_out
  doc: outfile (default = STDOUT)
  type: boolean
  inputBinding:
    prefix: -o/--out
- id: h_slash_help
  doc: show this documentation
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_einfo
