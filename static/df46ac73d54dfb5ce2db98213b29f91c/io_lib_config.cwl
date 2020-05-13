class: CommandLineTool
id: io_lib_config.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cflags
  doc: C and preprocessor flags (eg -I/foo/include)
  type: boolean
  inputBinding:
    prefix: --cflags
- id: libs
  doc: Link-line parameters, eg -L/foo/lib -lstaden-read
  type: boolean
  inputBinding:
    prefix: --libs
outputs: []
cwlVersion: v1.1
baseCommand:
- io_lib-config
