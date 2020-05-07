class: CommandLineTool
id: ppanini_scatterplot.cwl
inputs:
- id: master_plot
  doc: plotting master figure of the paper
  type: boolean
  inputBinding:
    prefix: --master-plot
- id: path
  doc: path for inputs and/or outputs
  type: File
  inputBinding:
    prefix: --path
- id: outfile
  doc: output file
  type: string
  inputBinding:
    prefix: --outfile
- id: size
  doc: size of the plot in inches
  type: long
  inputBinding:
    prefix: --size
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_scatterplot
