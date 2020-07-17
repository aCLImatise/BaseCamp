class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/interop_dumpbin.cwl
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
- id: option_one
  doc: ''
  type: string
  inputBinding:
    prefix: --option1
- id: option_two
  doc: ''
  type: string
  inputBinding:
    prefix: --option2
- id: run_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_dumpbin
