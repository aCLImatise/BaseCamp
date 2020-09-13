class: CommandLineTool
id: ../../../interop_dumpbin.cwl
inputs:
- id: in_subset
  doc: '[0]: Display only a subset of records from each file'
  type: boolean
  inputBinding:
    prefix: --subset
- id: in_latest_version
  doc: '[0]: Display file as latest version of the format'
  type: boolean
  inputBinding:
    prefix: --latest_version
- id: in_option_two
  doc: ''
  type: long
  inputBinding:
    prefix: --option2
- id: in_option_one
  doc: ''
  type: long
  inputBinding:
    prefix: --option1
- id: in_run_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- interop_dumpbin
