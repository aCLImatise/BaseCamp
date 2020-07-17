class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/parallel_fastq.cwl
inputs:
- id: parallel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel-fastq
