class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bxtools_stats.cwl
inputs:
- id: verbose
  doc: Set verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: tag
  doc: Collect stats by a tag other than BX (e.g. MI)
  type: boolean
  inputBinding:
    prefix: --tag
- id: bx_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: stat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- stats
