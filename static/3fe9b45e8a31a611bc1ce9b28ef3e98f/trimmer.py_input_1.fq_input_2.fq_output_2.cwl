class: CommandLineTool
id: trimmer.py_input_1.fq_input_2.fq_output_2.fq.cwl
inputs:
- id: output_1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- trimmer.py
- input_1.fq
- input_2.fq
- output_2.fq
