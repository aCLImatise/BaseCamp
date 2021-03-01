class: CommandLineTool
id: HiLine_align_one_read.cwl
inputs:
- id: in_no_rmd_ups
  doc: "Run samtools mark_dup pipeline on alignment.\nDefault=rmdups"
  type: boolean?
  inputBinding:
    prefix: --no-rmdups
- id: in_no_trim
  doc: "Run HiC read trimming, trim sections of reads that\nalign past restriction\
    \ sites. Default=trim"
  type: boolean?
  inputBinding:
    prefix: --no-trim
- id: in_bwa_one
  doc: Use bwa mem. Default=False
  type: boolean?
  inputBinding:
    prefix: --bwa1
- id: in_bwa_two
  doc: Use bwa-mem2. Default=True
  type: boolean?
  inputBinding:
    prefix: --bwa2
- id: in_minimap_two
  doc: Use minimap2. Default=False
  type: boolean?
  inputBinding:
    prefix: --minimap2
- id: in_reads
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
  dockerPull: quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0
cwlVersion: v1.1
baseCommand:
- HiLine
- align-one-read
