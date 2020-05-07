class: CommandLineTool
id: _template_script.py.cwl
inputs:
- id: i
  doc: Input.
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- _template_script.py
