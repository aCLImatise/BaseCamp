class: CommandLineTool
id: cbUpgrade.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_output_directory_default
  doc: "output directory, default can be set through the env.\nvariable CBOUT, current\
    \ value: none"
  type: Directory?
  inputBinding:
    prefix: --outDir
- id: in_port
  doc: "after upgrade, start HTTP server bound to port and\nserve <outDir>"
  type: string?
  inputBinding:
    prefix: --port
- id: in_code
  doc: also update the javascript code
  type: boolean?
  inputBinding:
    prefix: --code
- id: in_dev
  doc: "only for developers: do not add version to js/css\nlinks\n"
  type: boolean?
  inputBinding:
    prefix: --dev
- id: in_var_5
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_default
  doc: "output directory, default can be set through the env.\nvariable CBOUT, current\
    \ value: none"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_default)
hints: []
cwlVersion: v1.1
baseCommand:
- cbUpgrade
