class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sendsketch.sh.cwl
inputs:
- id: nucleotides_dot
  doc: Designed for prokaryotes.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sendsketch.sh
