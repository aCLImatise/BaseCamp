class: CommandLineTool
id: strain_transmission.py.cwl
inputs:
- id: in_tree
  doc: The input tree file
  type: File?
  inputBinding:
    prefix: --tree
- id: in_metadata
  doc: The input metadata
  type: string?
  inputBinding:
    prefix: --metadata
- id: in_output_dir
  doc: The output directory
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_save_dist
  doc: '[Optional] Save the PhyPhlAn pairwise distances file'
  type: boolean?
  inputBinding:
    prefix: --save_dist
- id: in_threshold
  doc: "[Optional] A custom distribution threshold value.\nDefault: 0.01\n"
  type: double?
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: The output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- strain_transmission.py
