class: CommandLineTool
id: EnergyPlot_output file.cwl
inputs:
- id: folding_save_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- EnergyPlot
- output file
