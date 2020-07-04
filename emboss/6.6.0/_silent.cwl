class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/_silent.cwl
inputs:
- id: enzymes
  doc: string     [all] Comma separated enzyme list (Any string)
  type: boolean
  inputBinding:
    prefix: -enzymes
outputs: []
cwlVersion: v1.1
baseCommand:
- _silent
