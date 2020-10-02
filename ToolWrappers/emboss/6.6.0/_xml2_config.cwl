class: CommandLineTool
id: _xml2_config.cwl
inputs:
- id: in_prefix
  doc: change libxml prefix [default /usr/local]
  type: string
  inputBinding:
    prefix: --prefix
- id: in_exec_prefix
  doc: change libxml exec prefix [default /usr/local]
  type: string
  inputBinding:
    prefix: --exec-prefix
- id: in_libs
  doc: "print library linking information\nadd --dynamic to print only shared libraries"
  type: boolean
  inputBinding:
    prefix: --libs
- id: in_cflags
  doc: print pre-processor and compiler flags
  type: boolean
  inputBinding:
    prefix: --cflags
- id: in_modules
  doc: module support enabled
  type: boolean
  inputBinding:
    prefix: --modules
- id: in_xml_two_config
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _xml2-config
