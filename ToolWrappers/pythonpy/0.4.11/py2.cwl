class: CommandLineTool
id: py2.cwl
inputs:
- id: in_treat_row_stdin
  doc: treat each row of stdin as x
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_treat_list_stdin
  doc: treat list of stdin as l
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_run_code_before_expression
  doc: run code before expression
  type: string?
  inputBinding:
    prefix: -c
- id: in_run_code_after_expression
  doc: run code after expression
  type: string?
  inputBinding:
    prefix: -C
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_expression
  doc: e.g. py '2 ** 32'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- py2
