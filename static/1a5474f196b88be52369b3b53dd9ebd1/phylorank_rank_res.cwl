class: CommandLineTool
id: phylorank_rank_res.cwl
inputs:
- id: input_tree
  doc: decorated tree
  type: string
  inputBinding:
    position: 0
- id: taxonomy_file
  doc: file with taxonomy for extant taxa
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: output file with resolution of taxa at each rank
  type: string
  inputBinding:
    position: 2
- id: tax_a_file
  doc: output file indicating taxa within each resolution category
  type: string
  inputBinding:
    prefix: --taxa_file
outputs: []
cwlVersion: v1.1
baseCommand:
- phylorank
- rank_res
