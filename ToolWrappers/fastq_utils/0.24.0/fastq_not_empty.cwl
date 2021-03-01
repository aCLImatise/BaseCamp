class: CommandLineTool
id: fastq_not_empty.cwl
inputs:
- id: in_fast_q_file
  doc: ''
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
- fastq_not_empty
