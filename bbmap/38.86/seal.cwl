class: CommandLineTool
id: ../../../seal.sh.cwl
inputs:
- id: discarded_dot
  doc: Pairs will be discarded only if both are shorter.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seal.sh
