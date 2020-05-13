class: CommandLineTool
id: remove_annotation_FASTQ.cwl
inputs:
- id: fast_q_annotation
  doc: .txt
  type: boolean
  inputBinding:
    prefix: '- FASTQ_annotation'
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_annotation
- FASTQ
