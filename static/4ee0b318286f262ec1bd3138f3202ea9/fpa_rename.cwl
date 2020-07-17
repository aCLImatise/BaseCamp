class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fpa_rename.cwl
inputs:
- id: input
  doc: Rename reads with value in path passed as parameter
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Write rename table in path passed as parameter
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
- rename
