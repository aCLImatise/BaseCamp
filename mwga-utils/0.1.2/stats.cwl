class: CommandLineTool
id: ../../../stats.cwl
inputs:
- id: prefix_stats_files
  doc: 'Prefix for output stats files [default: stats]'
  type: string
  inputBinding:
    prefix: -p
- id: maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stats
