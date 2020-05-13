class: CommandLineTool
id: phylorank_bl_table.cwl
inputs:
- id: input_tree
  doc: input tree to calculate branch length distributions
  type: string
  inputBinding:
    position: 0
- id: tax_on_category
  doc: file indicating category for each taxon in the tree
  type: string
  inputBinding:
    position: 1
- id: output_table
  doc: desired named of output table
  type: string
  inputBinding:
    position: 2
- id: step_size
  doc: 'step size for mean branch length criterion (default: 0.01)'
  type: string
  inputBinding:
    prefix: --step_size
outputs: []
cwlVersion: v1.1
baseCommand:
- phylorank
- bl_table
