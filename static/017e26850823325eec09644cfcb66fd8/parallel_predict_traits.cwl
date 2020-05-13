class: CommandLineTool
id: parallel_predict_traits.py.cwl
inputs:
- id: observed_trait_table
  doc: the input trait table describing directly observed traits (e.g. sequenced genomes)
    in tab-delimited format [REQUIRED]
  type: string
  inputBinding:
    prefix: --observed_trait_table
- id: tree
  doc: the full reference tree, in Newick format [REQUIRED]
  type: string
  inputBinding:
    prefix: --tree
- id: output_trait_table
  doc: the output filepath for trait predictions [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_trait_table
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_predict_traits.py
