class: CommandLineTool
id: gffcompare.cwl
inputs:
- id: k
  doc: /-A/-X, do NOT discard any redundant transfrag matching a reference
  type: string
  inputBinding:
    prefix: -K
outputs: []
cwlVersion: v1.1
baseCommand:
- gffcompare
