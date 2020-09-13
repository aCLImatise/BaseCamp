class: CommandLineTool
id: ../../../starfish_validate.cwl
inputs:
- id: in_experiment_json
  doc: ''
  type: File
  inputBinding:
    prefix: --experiment-json
- id: in_fuzz
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fuzz
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- starfish
- validate
