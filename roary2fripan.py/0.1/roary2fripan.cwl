class: CommandLineTool
id: roary2fripan.py_OUTPUT_PREFIX_PREFIX.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- roary2fripan.py
- OUTPUT-PREFIX
- PREFIX
