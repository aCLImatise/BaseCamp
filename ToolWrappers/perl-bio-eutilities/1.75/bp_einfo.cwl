class: CommandLineTool
id: bp_einfo.cwl
inputs:
- id: in_e_slash_email
  doc: Valid email (required by NCBI policy)
  type: boolean
  inputBinding:
    prefix: -e/--email
- id: in_d_slash_db_slash_database
  doc: "NCBI database to query\n(default = none, which shows available databases)"
  type: boolean
  inputBinding:
    prefix: -d/--db/--database
- id: in_f_slash_field
  doc: "print out information about a specific field code\n(default = none)"
  type: boolean
  inputBinding:
    prefix: -f/--field
- id: in_lslash_link
  doc: "print out information about a specific link name\n(default = none)"
  type: boolean
  inputBinding:
    prefix: -l/--link
- id: in_oslash_out
  doc: "outfile\n(default = STDOUT)"
  type: boolean
  inputBinding:
    prefix: -o/--out
- id: in_h_slash_help
  doc: show this documentation
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
- id: in_support
  doc: "Please direct usage questions or support issues to the mailing list:\n*bioperl-l@bioperl.org*\n\
    rather than to the module maintainer directly. Many experienced and\nreponsive\
    \ experts will be able look at the problem and quickly address\nit. Please include\
    \ a thorough description of the problem with code and\ndata examples if at all\
    \ possible."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_einfo
