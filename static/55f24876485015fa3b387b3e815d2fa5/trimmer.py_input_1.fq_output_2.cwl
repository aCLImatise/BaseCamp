class: CommandLineTool
id: trimmer.py_input_1.fq_output_2.fq.cwl
inputs:
- id: input_2fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_1fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_2fq
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- trimmer.py
- input_1.fq
- output_2.fq
