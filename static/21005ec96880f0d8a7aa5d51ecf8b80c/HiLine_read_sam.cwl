class: CommandLineTool
id: ../../../HiLine_read_sam.cwl
inputs:
- id: rmd_ups
  doc: / --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups
  type: boolean
  inputBinding:
    prefix: --rmdups
- id: sam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- read-sam
