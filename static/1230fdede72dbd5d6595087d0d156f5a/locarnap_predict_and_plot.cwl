class: CommandLineTool
id: locarnap_predict_and_plot.pl.cwl
inputs:
- id: annotation_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- locarnap-predict-and-plot.pl
