class: CommandLineTool
id: bam2fastq_output.1.fastq.cwl
inputs:
- id: output_2fastq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fastq
- output.1.fastq
