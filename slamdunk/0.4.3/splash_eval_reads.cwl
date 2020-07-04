class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splash_eval_reads.cwl
inputs:
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- eval-reads
