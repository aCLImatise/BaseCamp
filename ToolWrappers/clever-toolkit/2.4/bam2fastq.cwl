class: CommandLineTool
id: bam2fastq.cwl
inputs:
- id: in_output_dot_one_dot_fast_q
  doc: ''
  type: double
  inputBinding:
    position: 0
- id: in_output_dot_two_dot_fast_q
  doc: ''
  type: double
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2fastq
