class: CommandLineTool
id: strain_transmission.py.cwl
inputs:
- id: tree
  doc: The input tree file
  type: string
  inputBinding:
    prefix: --tree
- id: metadata
  doc: The input metadata
  type: string
  inputBinding:
    prefix: --metadata
- id: output_dir
  doc: The output directory
  type: string
  inputBinding:
    prefix: --output_dir
- id: save_dist
  doc: '[Optional] Save the PhyPhlAn pairwise distances file'
  type: boolean
  inputBinding:
    prefix: --save_dist
- id: threshold
  doc: '[Optional] A custom distribution threshold value. Default: 0.01'
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- strain_transmission.py
