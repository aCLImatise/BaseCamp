class: CommandLineTool
id: go2chadoxml.cwl
inputs:
- id: xinclude
  doc: ': do XInclude processing on document input'
  type: boolean
  inputBinding:
    prefix: --xinclude
- id: xinclude_style
  doc: ': do XInclude processing on stylesheets'
  type: boolean
  inputBinding:
    prefix: --xincludestyle
- id: load_trace
  doc: ': print trace of all external entites loaded'
  type: boolean
  inputBinding:
    prefix: --load-trace
- id: profile
  doc: ': dump profiling information '
  type: string
  inputBinding:
    prefix: --profile
outputs: []
cwlVersion: v1.1
baseCommand:
- go2chadoxml
