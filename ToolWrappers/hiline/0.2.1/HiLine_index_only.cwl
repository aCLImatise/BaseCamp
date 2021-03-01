class: CommandLineTool
id: HiLine_index_only.cwl
inputs:
- id: in_no_trim
  doc: "Run HiC read trimming, trim sections of reads that align\npast restriction\
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
- index-only
