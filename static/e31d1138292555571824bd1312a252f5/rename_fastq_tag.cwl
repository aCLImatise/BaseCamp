class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rename_fastq_tag.cwl
inputs:
- id: fast_q
  doc: ''
  type: string
  inputBinding:
    prefix: -fastq
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- rename_fastq_tag
