class: CommandLineTool
id: cwltest_args.cwl
inputs:
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: in_basedir
  doc: ''
  type: string
  inputBinding:
    prefix: --basedir
- id: in_test
  doc: ''
  type: string
  inputBinding:
    prefix: --test
- id: in_cwl_test
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
- cwltest
- args
