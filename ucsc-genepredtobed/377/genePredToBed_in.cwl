class: CommandLineTool
id: genePredToBed_in.genePred.cwl
inputs:
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToBed
- in.genePred
