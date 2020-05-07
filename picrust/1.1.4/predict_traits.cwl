class: CommandLineTool
id: predict_traits.py.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- predict_traits.py
