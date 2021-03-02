class: CommandLineTool
id: HiLine_bwa_align_sam_reads.cwl
inputs:
- id: in_no_rmd_ups
  doc: "Run samtools mark_dup pipeline on alignment.\nDefault=rmdups"
  type: boolean?
  inputBinding:
    prefix: --no-rmdups
- id: in_tag
  doc: SAM tag(s) to append to reads.
  type: string?
  inputBinding:
    prefix: --tag
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HiLine
- bwa-align-sam-reads
