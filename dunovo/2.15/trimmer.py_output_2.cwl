class: CommandLineTool
id: trimmer.py_output_2.fq.cwl
inputs:
- id: input_1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_1fq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_2fq
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- trimmer.py
- output_2.fq
