class: CommandLineTool
id: _xml2_config.cwl
inputs:
- id: xml2_config
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: change libxml prefix [default /tmp/tmp9yoxgo6u]
  type: string
  inputBinding:
    prefix: --prefix
- id: exec_prefix
  doc: change libxml exec prefix [default /tmp/tmp9yoxgo6u]
  type: string
  inputBinding:
    prefix: --exec-prefix
- id: libs
  doc: print library linking information add --dynamic to print only shared libraries
  type: boolean
  inputBinding:
    prefix: --libs
- id: cflags
  doc: print pre-processor and compiler flags
  type: boolean
  inputBinding:
    prefix: --cflags
- id: modules
  doc: module support enabled
  type: boolean
  inputBinding:
    prefix: --modules
outputs: []
cwlVersion: v1.1
baseCommand:
- _xml2-config
