class: CommandLineTool
id: mob_init.cwl
inputs:
- id: in_database_directory
  doc: "Directory to download databases to. Defaults to\n/usr/local/lib/python3.8/site-\n\
    packages/mob_suite/databases"
  type: Directory
  inputBinding:
    prefix: --database_directory
- id: in_verbose
  doc: Set the verbosity level. Can by used multiple times
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: in_three_dot_zero_dot_zero
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mob_init
