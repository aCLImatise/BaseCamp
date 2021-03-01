class: CommandLineTool
id: backbone_global_to_local.cwl
inputs:
- id: in_x_mfa_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_backbone_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- backbone_global_to_local
