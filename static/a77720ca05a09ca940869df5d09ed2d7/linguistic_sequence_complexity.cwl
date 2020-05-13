class: CommandLineTool
id: linguistic_sequence_complexity.py.cwl
inputs:
- id: sequence
  doc: 'input vcf file (default: None)'
  type: string
  inputBinding:
    prefix: --sequence
outputs: []
cwlVersion: v1.1
baseCommand:
- linguistic_sequence_complexity.py
