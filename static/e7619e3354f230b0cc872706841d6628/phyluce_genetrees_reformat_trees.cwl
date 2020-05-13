class: CommandLineTool
id: phyluce_genetrees_reformat_trees.cwl
inputs:
- id: input
  doc: The input trees directory
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output trees directory
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The tree file format
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: The tree file format
  type: string
  inputBinding:
    prefix: --output-format
- id: do_not_preserve_spaces
  doc: Do not retain spaces in output names
  type: string
  inputBinding:
    prefix: --do-not-preserve-spaces
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_reformat_trees
