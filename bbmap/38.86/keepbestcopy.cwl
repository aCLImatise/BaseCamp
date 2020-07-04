class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/keepbestcopy.sh.cwl
inputs:
- id: keep_best_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- keepbestcopy.sh
