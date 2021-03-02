class: CommandLineTool
id: io_lib_config.cwl
inputs:
- id: in_cflags
  doc: C and preprocessor flags (eg -I/foo/include)
  type: boolean?
  inputBinding:
    prefix: --cflags
- id: in_libs
  doc: Link-line parameters, eg -L/foo/lib -lstaden-read
  type: boolean?
  inputBinding:
    prefix: --libs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- io_lib-config
