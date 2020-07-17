class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/repair.sh.cwl
inputs:
- id: names_dot
  doc: Uses much more memory than 'fint' mode.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- repair.sh
