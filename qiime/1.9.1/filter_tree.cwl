class: CommandLineTool
id: filter_tree.py.cwl
inputs:
- id: input_tree_file_path
  doc: input tree filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_tree_filepath
- id: output_tree_file_path
  doc: output tree filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_tree_filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_tree.py
