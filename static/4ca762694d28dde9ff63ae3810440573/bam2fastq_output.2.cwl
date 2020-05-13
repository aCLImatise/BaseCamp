class: CommandLineTool
id: bam2fastq_output.2.fastq.cwl
inputs:
- id: output_1fastq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_2fastq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fastq
- output.2.fastq
