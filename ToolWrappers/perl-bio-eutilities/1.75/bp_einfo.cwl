class: CommandLineTool
id: bp_einfo.cwl
inputs:
- id: in_email
  doc: Valid email (required by NCBI policy)
  type: boolean?
  inputBinding:
    prefix: --email
- id: in_database
  doc: "NCBI database to query\n(default = none, which shows available databases)"
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_field
  doc: "print out information about a specific field code\n(default = none)"
  type: boolean?
  inputBinding:
    prefix: --field
- id: in_link
  doc: "print out information about a specific link name\n(default = none)"
  type: boolean?
  inputBinding:
    prefix: --link
- id: in_outfile
  doc: (default = STDOUT)
  type: string
  inputBinding:
    position: 0
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
hints: []
cwlVersion: v1.1
baseCommand:
- bp_einfo
