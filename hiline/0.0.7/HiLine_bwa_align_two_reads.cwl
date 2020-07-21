class: CommandLineTool
id: ../../../HiLine_bwa_align_two_reads.cwl
inputs:
- id: rmd_ups
  doc: / --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups
  type: boolean
  inputBinding:
    prefix: --rmdups
- id: reads_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- bwa-align-two-reads
