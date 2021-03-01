class: CommandLineTool
id: GraphicsMagickWand_config.cwl
inputs:
- id: in_prefix
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_libs
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --libs
- id: in_ldflags
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --ldflags
- id: in_exec_prefix
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --exec-prefix
- id: in_cppflags
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --cppflags
- id: in_cflags
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --cflags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- GraphicsMagickWand-config
