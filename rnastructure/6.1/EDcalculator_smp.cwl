class: CommandLineTool
id: EDcalculator_smp.cwl
inputs:
- id: ed_calculator
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ct_structure_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- EDcalculator-smp
