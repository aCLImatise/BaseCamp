class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_delete_state.cwl
inputs:
- id: list_states
  doc: Show available states and exit.
  type: boolean
  inputBinding:
    prefix: --list-states
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-delete-state
