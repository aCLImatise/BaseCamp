class: CommandLineTool
id: ../../../assembly_stats.cwl
inputs:
- id: stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_of_fast_a_slash_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- assembly-stats
