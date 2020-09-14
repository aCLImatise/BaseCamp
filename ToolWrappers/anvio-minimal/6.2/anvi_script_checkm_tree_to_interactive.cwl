class: CommandLineTool
id: ../../../anvi_script_checkm_tree_to_interactive.cwl
inputs:
- id: in_tree__tree
  doc: "TREE, --tree CHECKM TREE\nTree file generated by CheckM."
  type: File
  inputBinding:
    prefix: -t
- id: in_output_dir
  doc: "The directory name that output files will be stored.\n"
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "The directory name that output files will be stored.\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- anvi-script-checkm-tree-to-interactive