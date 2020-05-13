class: CommandLineTool
id: sam_stats_file1.cwl
inputs:
- id: file_2filen
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sam-stats
- file1
