class: CommandLineTool
id: ../../../bam2fastq.cwl
inputs:
- id: output_dot_one_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_two_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fastq
