class: CommandLineTool
id: coverage_3.6_combine.cwl
inputs:
- id: in_append
  doc: "Append coverage data to .coverage, otherwise it starts\nclean each time."
  type: boolean
  inputBinding:
    prefix: --append
- id: in_debug
  doc: Debug options, separated by commas
  type: string
  inputBinding:
    prefix: --debug
- id: in_rcfile
  doc: Specify configuration file.  Defaults to '.coveragerc'
  type: File
  inputBinding:
    prefix: --rcfile
- id: in_path_n
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coverage-3.6
- combine
