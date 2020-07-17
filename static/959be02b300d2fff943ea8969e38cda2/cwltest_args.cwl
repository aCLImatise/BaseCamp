class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cwltest_args.cwl
inputs:
- id: test
  doc: ''
  type: string
  inputBinding:
    prefix: --test
- id: basedir
  doc: ''
  type: string
  inputBinding:
    prefix: --basedir
- id: l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: cwl_test
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cwltest
- args
