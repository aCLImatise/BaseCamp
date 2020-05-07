class: CommandLineTool
id: mrnaToGene_genePredFile.cwl
inputs:
- id: psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_pred_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mrnaToGene
- genePredFile
