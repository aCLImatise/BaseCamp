class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/py2.7.cwl
inputs:
- id: treat_row_stdin
  doc: treat each row of stdin as x
  type: boolean
  inputBinding:
    prefix: -x
- id: treat_list_stdin
  doc: treat list of stdin as l
  type: boolean
  inputBinding:
    prefix: -l
- id: run_code_before_expression
  doc: run code before expression
  type: string
  inputBinding:
    prefix: -c
- id: run_code_after_expression
  doc: run code after expression
  type: string
  inputBinding:
    prefix: -C
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: expression
  doc: e.g. py '2 ** 32'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- py2.7
