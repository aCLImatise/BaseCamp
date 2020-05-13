class: CommandLineTool
id: EnergyPlot_folding save file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- EnergyPlot
- folding save file
