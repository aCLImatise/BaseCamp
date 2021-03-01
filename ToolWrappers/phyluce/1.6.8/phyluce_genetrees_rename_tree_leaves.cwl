class: CommandLineTool
id: phyluce_genetrees_rename_tree_leaves.cwl
inputs:
- id: in_input
  doc: The input tree file
  type: File?
  inputBinding:
    prefix: --input
- id: in_config
  doc: A python config file mapping one name to another
  type: File?
  inputBinding:
    prefix: --config
- id: in_output
  doc: The output tree file
  type: File?
  inputBinding:
    prefix: --output
- id: in_section
  doc: The section of the conf file to use
  type: File?
  inputBinding:
    prefix: --section
- id: in_order
  doc: "{left:right,right:left}\nMap the names as entered or in reverse"
  type: boolean?
  inputBinding:
    prefix: --order
- id: in_input_format
  doc: The tree file format
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: The tree file format
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_re_root
  doc: The resulting name to root the tree on
  type: string?
  inputBinding:
    prefix: --reroot
- id: in_do_not_preserve_spaces
  doc: "Do not retain spaces in output names\n"
  type: string?
  inputBinding:
    prefix: --do-not-preserve-spaces
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output tree file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_rename_tree_leaves
