class: CommandLineTool
id: make_bootstrapped_tree.py.cwl
inputs:
- id: master_tree
  doc: This is the path to the master tree [REQUIRED]
  type: string
  inputBinding:
    prefix: --master_tree
- id: support
  doc: This is the path to the bootstrap support file [REQUIRED]
  type: string
  inputBinding:
    prefix: --support
- id: output_file
  doc: This is the filename where the output should be written. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_file
outputs: []
cwlVersion: v1.1
baseCommand:
- make_bootstrapped_tree.py
