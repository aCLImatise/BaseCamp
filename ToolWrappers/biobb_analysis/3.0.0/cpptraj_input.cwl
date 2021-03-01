class: CommandLineTool
id: cpptraj_input.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_instructions_path
  doc: "Path of the instructions file.\n"
  type: File?
  inputBinding:
    prefix: --input_instructions_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cpptraj_input
