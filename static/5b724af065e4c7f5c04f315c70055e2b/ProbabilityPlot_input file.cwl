class: CommandLineTool
id: ProbabilityPlot_input file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ProbabilityPlot
- input file
