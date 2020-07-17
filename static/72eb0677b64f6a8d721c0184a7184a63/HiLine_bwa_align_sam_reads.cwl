class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/HiLine_bwa_align_sam_reads.cwl
inputs:
- id: rmd_ups
  doc: / --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups
  type: boolean
  inputBinding:
    prefix: --rmdups
- id: tag
  doc: SAM tag(s) to append to reads.
  type: string
  inputBinding:
    prefix: --tag
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- bwa-align-sam-reads
