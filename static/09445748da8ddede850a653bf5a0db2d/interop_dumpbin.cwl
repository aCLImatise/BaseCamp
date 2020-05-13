class: CommandLineTool
id: interop_dumpbin.cwl
inputs:
- id: subset
  doc: '[0]: Display only a subset of records from each file'
  type: boolean
  inputBinding:
    prefix: --subset
- id: latest_version
  doc: '[0]: Display file as latest version of the format'
  type: boolean
  inputBinding:
    prefix: --latest_version
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_dumpbin
