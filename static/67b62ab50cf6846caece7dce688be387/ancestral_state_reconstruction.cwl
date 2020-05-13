class: CommandLineTool
id: ancestral_state_reconstruction.py.cwl
inputs:
- id: input_tree_fp
  doc: the tree to use for ASR [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_tree_fp
- id: input_trait_table_fp
  doc: the trait table to use for ASR [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_trait_table_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- ancestral_state_reconstruction.py
