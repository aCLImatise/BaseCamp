class: CommandLineTool
id: dv_make_examples.py.cwl
inputs:
- id: examples
  doc: '[-h]'
  type: string
  inputBinding:
    prefix: --examples
outputs: []
cwlVersion: v1.1
baseCommand:
- dv_make_examples.py
