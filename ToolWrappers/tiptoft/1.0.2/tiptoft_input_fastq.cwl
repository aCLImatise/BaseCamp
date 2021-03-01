class: CommandLineTool
id: tiptoft_input_fastq.cwl
inputs:
- id: in_tip_to_ft
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tiptoft
- input_fastq
