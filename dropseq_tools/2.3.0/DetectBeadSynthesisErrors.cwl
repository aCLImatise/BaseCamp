class: CommandLineTool
id: ../../../DetectBeadSynthesisErrors.cwl
inputs:
- id: default_g
  doc: (default 4g)
  type: string
  inputBinding:
    prefix: -m
- id: final_command_line
  doc: final command line before executing
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- DetectBeadSynthesisErrors
