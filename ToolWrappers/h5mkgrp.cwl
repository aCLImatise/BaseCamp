class: CommandLineTool
id: h5mkgrp.cwl
inputs:
- id: in_latest
  doc: Use latest version of file format to create groups
  type: boolean
  inputBinding:
    prefix: --latest
- id: in_parents
  doc: No error if existing, make parent groups as needed
  type: boolean
  inputBinding:
    prefix: --parents
- id: in_verbose
  doc: Print information about OBJECTS and OPTIONS
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_options
  doc: -h, --help         Print a usage message and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5mkgrp
