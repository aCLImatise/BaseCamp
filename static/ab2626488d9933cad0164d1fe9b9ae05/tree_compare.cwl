class: CommandLineTool
id: tree_compare.py.cwl
inputs:
- id: master_tree
  doc: master tree filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --master_tree
- id: support_dir
  doc: path to dir containing support trees [REQUIRED]
  type: string
  inputBinding:
    prefix: --support_dir
- id: output_dir
  doc: output directory, writes three files here makes dir if it doesn't exist [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- tree_compare.py
