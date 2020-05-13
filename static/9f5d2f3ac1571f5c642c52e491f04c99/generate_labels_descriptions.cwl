class: CommandLineTool
id: generate_labels_descriptions.py.cwl
inputs:
- id: output
  doc: The output directory where the descriptions of labels is generated. Default
    is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_labels_descriptions.py
