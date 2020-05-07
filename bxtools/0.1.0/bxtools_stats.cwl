class: CommandLineTool
id: bxtools_stats.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- stats
