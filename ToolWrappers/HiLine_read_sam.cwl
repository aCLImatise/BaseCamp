class: CommandLineTool
id: HiLine_read_sam.cwl
inputs:
- id: in_rmd_ups
  doc: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment.\nDefault=rmdups"
  type: boolean
  inputBinding:
    prefix: --rmdups
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HiLine
- read-sam
