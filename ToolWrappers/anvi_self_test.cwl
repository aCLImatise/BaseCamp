class: CommandLineTool
id: anvi_self_test.cwl
inputs:
- id: in_force
  doc: ''
  type: boolean
  inputBinding:
    prefix: --force
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_suite
  doc: ''
  type: string
  inputBinding:
    prefix: --suite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-self-test
