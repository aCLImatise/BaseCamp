class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_self_test.cwl
inputs:
- id: suite
  doc: ''
  type: string
  inputBinding:
    prefix: --suite
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: force
  doc: ''
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-self-test
