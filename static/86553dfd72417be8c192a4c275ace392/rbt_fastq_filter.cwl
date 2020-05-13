class: CommandLineTool
id: rbt_fastq_filter.cwl
inputs:
- id: ids
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- fastq-filter
