class: CommandLineTool
id: estimate_mer_threshold.cwl
inputs:
- id: m
  doc: file of mercounts
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- estimate-mer-threshold
