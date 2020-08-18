class: CommandLineTool
id: ../../../GraphicsMagick_config.cwl
inputs:
- id: cflags
  doc: ''
  type: boolean
  inputBinding:
    prefix: --cflags
- id: cppflags
  doc: ''
  type: boolean
  inputBinding:
    prefix: --cppflags
- id: exec_prefix
  doc: ''
  type: boolean
  inputBinding:
    prefix: --exec-prefix
- id: ldflags
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ldflags
- id: libs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --libs
- id: prefix
  doc: ''
  type: boolean
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- GraphicsMagick-config
