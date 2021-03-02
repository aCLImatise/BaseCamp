class: CommandLineTool
id: HiLine_bwa_align_two_reads.cwl
inputs:
- id: in_no_rmd_ups
  doc: "Run samtools mark_dup pipeline on alignment.\nDefault=rmdups"
  type: boolean?
  inputBinding:
    prefix: --no-rmdups
- id: in_reads_dot_dot_dot
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
- bwa-align-two-reads
