class: CommandLineTool
id: ../../../mrnaToGene.cwl
inputs:
- id: unique_dot
  doc: It is not removed from the name in the genePred.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mrnaToGene
