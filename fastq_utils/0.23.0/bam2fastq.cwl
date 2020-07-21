class: CommandLineTool
id: ../../../bam2fastq.cwl
inputs:
- id: bam
  doc: ''
  type: string
  inputBinding:
    prefix: --bam
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2fastq
