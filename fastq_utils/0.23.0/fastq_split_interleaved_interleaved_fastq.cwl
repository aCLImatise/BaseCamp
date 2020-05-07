class: CommandLineTool
id: fastq_split_interleaved_interleaved_fastq.cwl
inputs:
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_split_interleaved
- interleaved_fastq
