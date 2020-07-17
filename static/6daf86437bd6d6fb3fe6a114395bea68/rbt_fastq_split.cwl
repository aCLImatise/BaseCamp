class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rbt_fastq_split.cwl
inputs:
- id: chunks
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- fastq-split
