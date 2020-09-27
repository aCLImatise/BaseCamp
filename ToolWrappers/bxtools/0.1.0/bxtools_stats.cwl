class: CommandLineTool
id: bxtools_stats.cwl
inputs:
- id: in_verbose
  doc: Set verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_tag
  doc: Collect stats by a tag other than BX (e.g. MI)
  type: boolean
  inputBinding:
    prefix: --tag
- id: in_bx_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_stat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bxtools
- stats
