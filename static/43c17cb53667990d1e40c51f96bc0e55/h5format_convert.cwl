class: CommandLineTool
id: h5format_convert.cwl
inputs:
- id: in_verbose
  doc: Turn on verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_d_name
  doc: Pathname for the dataset
  type: string?
  inputBinding:
    prefix: --dname
- id: in_noop
  doc: Perform all the steps except the actual conversion
  type: boolean?
  inputBinding:
    prefix: --noop
- id: in_options
  doc: -h, --help                Print a usage message and exit
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
- h5format_convert
