class: CommandLineTool
id: ../../../splash_eval_reads_bam.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: splash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: eval_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- eval-reads
- bam
