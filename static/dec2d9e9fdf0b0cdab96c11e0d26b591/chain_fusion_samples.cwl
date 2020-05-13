class: CommandLineTool
id: chain_fusion_samples.py.cwl
inputs:
- id: fuzzy_junction
  doc: 'Max allowed distance in junction to be considered identical (default: 5 bp)'
  type: string
  inputBinding:
    prefix: --fuzzy_junction
outputs: []
cwlVersion: v1.1
baseCommand:
- chain_fusion_samples.py
