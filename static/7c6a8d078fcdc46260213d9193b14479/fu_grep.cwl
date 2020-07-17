class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fu_grep.cwl
inputs:
- id: pattern
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fu-grep
