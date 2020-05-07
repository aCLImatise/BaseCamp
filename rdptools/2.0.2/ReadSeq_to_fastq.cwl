class: CommandLineTool
id: ReadSeq_to_fastq.cwl
inputs:
- id: to_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: qual_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- to-fastq
