class: CommandLineTool
id: fastq_count.cwl
inputs:
- id: in_r_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_r_two_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-count
