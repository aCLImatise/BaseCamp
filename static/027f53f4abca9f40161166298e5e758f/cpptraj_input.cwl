class: CommandLineTool
id: ../../../cpptraj_input.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_instructions_path
  doc: Path of the instructions file.
  type: string
  inputBinding:
    prefix: --input_instructions_path
outputs: []
cwlVersion: v1.1
baseCommand:
- cpptraj_input
