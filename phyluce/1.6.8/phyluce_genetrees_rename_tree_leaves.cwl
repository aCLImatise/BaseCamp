class: CommandLineTool
id: phyluce_genetrees_rename_tree_leaves.cwl
inputs:
- id: input
  doc: The input tree file
  type: string
  inputBinding:
    prefix: --input
- id: config
  doc: A python config file mapping one name to another
  type: string
  inputBinding:
    prefix: --config
- id: output
  doc: The output tree file
  type: string
  inputBinding:
    prefix: --output
- id: section
  doc: The section of the conf file to use
  type: string
  inputBinding:
    prefix: --section
- id: order
  doc: '{left:right,right:left} Map the names as entered or in reverse'
  type: boolean
  inputBinding:
    prefix: --order
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
- id: re_root
  doc: The resulting name to root the tree on
  type: string
  inputBinding:
    prefix: --reroot
- id: do_not_preserve_spaces
  doc: Do not retain spaces in output names
  type: string
  inputBinding:
    prefix: --do-not-preserve-spaces
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_rename_tree_leaves
