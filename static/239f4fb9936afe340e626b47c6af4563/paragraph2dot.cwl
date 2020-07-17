class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/paragraph2dot.py_output.cwl
inputs:
- id: paragraph_two_dot_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- paragraph2dot.py
- output
