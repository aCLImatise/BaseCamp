class: CommandLineTool
id: bedToGenePred_bedFile.cwl
inputs:
- id: gene_pred_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedToGenePred
- bedFile
