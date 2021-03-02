class: CommandLineTool
id: fastq_utils_il.cwl
inputs:
- id: in_mate_one_file
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_mate_two_file
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_fast_q_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- il
