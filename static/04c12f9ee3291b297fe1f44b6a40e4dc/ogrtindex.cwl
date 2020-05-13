class: CommandLineTool
id: ogrtindex.cwl
inputs:
- id: accept_different_schemas
  doc: ': by default ogrtindex checks that all layers inserted into the index have
    the same attribute schemas. If you specify this option, this test will be disabled.
    Be aware that resulting index may be incompatible with MapServer!'
  type: boolean
  inputBinding:
    prefix: -accept_different_schemas
outputs: []
cwlVersion: v1.1
baseCommand:
- ogrtindex
