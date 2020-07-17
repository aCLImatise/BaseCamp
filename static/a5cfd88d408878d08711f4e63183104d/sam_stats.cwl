class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sam_stats.cwl
inputs:
- id: file_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_two_dot_dot_dotfile_n
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sam-stats
