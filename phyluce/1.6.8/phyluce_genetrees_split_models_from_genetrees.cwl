class: CommandLineTool
id: phyluce_genetrees_split_models_from_genetrees.cwl
inputs:
- id: gene_trees
  doc: The cloudforest genetree file containing models
  type: string
  inputBinding:
    prefix: --genetrees
- id: output
  doc: The output file to hold the parsed substitution model data
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_split_models_from_genetrees
