class: CommandLineTool
id: condense_workflow.py.cwl
inputs:
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- condense_workflow.py
