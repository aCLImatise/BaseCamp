class: CommandLineTool
id: LogolExec.sh.cwl
inputs:
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_minimum
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_logol
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_grammar
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- LogolExec.sh
