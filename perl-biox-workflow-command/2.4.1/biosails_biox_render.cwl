class: CommandLineTool
id: ../../../biosails_biox_render.py.cwl
inputs:
- id: template
  doc: Path to template file
  type: string
  inputBinding:
    prefix: --template
- id: json
  doc: Path to json object file
  type: string
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- biosails-biox-render.py
