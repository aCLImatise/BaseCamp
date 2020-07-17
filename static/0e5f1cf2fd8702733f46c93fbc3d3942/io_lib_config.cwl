class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/io_lib_config.cwl
inputs:
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
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- io_lib-config
