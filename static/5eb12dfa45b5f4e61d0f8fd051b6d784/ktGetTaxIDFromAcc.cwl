class: CommandLineTool
id: ktGetTaxIDFromAcc.cwl
inputs:
- id: in_a_zero_zero_zero_zero_one_dot_one
  doc: ''
  type: double
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_acc_two
  doc: ''
  type: long?
  inputBinding:
    position: 0
- id: in_grep
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_line
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tag
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_example
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktGetTaxIDFromAcc
