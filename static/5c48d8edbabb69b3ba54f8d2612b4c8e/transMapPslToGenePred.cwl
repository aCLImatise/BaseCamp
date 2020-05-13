class: CommandLineTool
id: transMapPslToGenePred.cwl
inputs:
- id: mrna_to_gene
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_gene_pred
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mapped_psl
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mapped_gene_pred
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- transMapPslToGenePred
