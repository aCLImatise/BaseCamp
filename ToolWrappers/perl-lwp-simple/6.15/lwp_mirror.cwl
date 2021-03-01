class: CommandLineTool
id: lwp_mirror.cwl
inputs:
- id: in_print_version_number
  doc: print version number of program
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_set_timeout_value
  doc: Set timeout value
  type: string?
  inputBinding:
    prefix: -t
- id: in_var_2
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_var_4
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lwp-mirror
