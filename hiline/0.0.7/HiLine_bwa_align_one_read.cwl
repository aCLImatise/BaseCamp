class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/HiLine_bwa_align_one_read.cwl
inputs:
- id: rmd_ups
  doc: / --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups
  type: boolean
  inputBinding:
    prefix: --rmdups
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- bwa-align-one-read
