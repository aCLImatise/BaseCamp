class: CommandLineTool
id: sam_stats_file2...filen.cwl
inputs:
- id: file_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_2filen
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sam-stats
- file2...filen
