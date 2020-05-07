class: CommandLineTool
id: paragraph2dot.py_output_output_output.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- paragraph2dot.py
- output
- output
- output
