class: CommandLineTool
id: fastq_truncate_num_reads.cwl
inputs:
- id: fastq1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: num_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_truncate
- num_reads
