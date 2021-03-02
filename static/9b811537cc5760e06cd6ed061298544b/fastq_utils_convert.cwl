class: CommandLineTool
id: fastq_utils_convert.cwl
inputs:
- id: in_fast_q_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- convert
