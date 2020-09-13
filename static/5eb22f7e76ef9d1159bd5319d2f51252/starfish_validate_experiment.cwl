class: CommandLineTool
id: ../../../starfish_validate_experiment.cwl
inputs:
- id: in_fuzz
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fuzz
- id: in_json_file_or_url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- starfish
- validate
- experiment
