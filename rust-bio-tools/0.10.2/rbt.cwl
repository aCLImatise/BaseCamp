class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rbt.cwl
inputs:
- id: verbose
  doc: Verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
