class: CommandLineTool
id: genePredToBed_out.bed.cwl
inputs:
- id: in_gene_pred
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToBed
- out.bed
