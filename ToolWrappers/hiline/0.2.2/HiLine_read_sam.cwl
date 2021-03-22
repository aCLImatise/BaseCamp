class: CommandLineTool
id: HiLine_read_sam.cwl
inputs:
- id: in_no_rmd_ups
  doc: "Run samtools mark_dup pipeline on alignment.\nDefault=rmdups"
  type: boolean?
  inputBinding:
    prefix: --no-rmdups
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1
cwlVersion: v1.1
baseCommand:
- HiLine
- read-sam
