class: CommandLineTool
id: consensus_tree.py.cwl
inputs:
- id: input_dir
  doc: input folder containing trees [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
- id: output_fname
  doc: the output consensus tree filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fname
outputs: []
cwlVersion: v1.1
baseCommand:
- consensus_tree.py
