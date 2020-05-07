class: CommandLineTool
id: clean_raxml_parsimony_tree.py.cwl
inputs:
- id: input_tree
  doc: the input raxml parsimony tree [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_tree
- id: tips_to_keep
  doc: the input tips to score and retain (comma-separated list) [REQUIRED]
  type: string
  inputBinding:
    prefix: --tips_to_keep
- id: output_fp
  doc: the output filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- clean_raxml_parsimony_tree.py
