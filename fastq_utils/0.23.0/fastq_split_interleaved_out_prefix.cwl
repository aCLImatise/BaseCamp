class: CommandLineTool
id: fastq_split_interleaved_out_prefix.cwl
inputs:
- id: interleaved_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_split_interleaved
- out_prefix
