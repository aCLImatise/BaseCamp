class: CommandLineTool
id: ../../../mergeribo.sh.cwl
inputs:
- id: sequence_dot
  doc: Mutually exclusive with best.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mergeribo.sh
