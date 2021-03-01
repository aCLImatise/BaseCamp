class: CommandLineTool
id: coverage_3.6_erase.cwl
inputs:
- id: in_debug
  doc: Debug options, separated by commas
  type: string?
  inputBinding:
    prefix: --debug
- id: in_rcfile
  doc: Specify configuration file.  Defaults to '.coveragerc'
  type: File?
  inputBinding:
    prefix: --rcfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- coverage-3.6
- erase
