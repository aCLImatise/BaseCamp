class: CommandLineTool
id: fastq_truncate_fastq1.cwl
inputs:
- id: num_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_truncate
- fastq1
