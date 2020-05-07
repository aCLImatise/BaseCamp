class: CommandLineTool
id: rtg_help_rocplot.cwl
inputs:
- id: hide_side_pane
  doc: if set, hide the side pane from the GUI on startup
  type: boolean
  inputBinding:
    prefix: --hide-sidepane
- id: interpolate
  doc: if set, interpolate curves at regular intervals
  type: boolean
  inputBinding:
    prefix: --interpolate
- id: line_width
  doc: sets the plot line width (Default is 2)
  type: long
  inputBinding:
    prefix: --line-width
- id: precision_sensitivity
  doc: set, plot precision vs sensitivity rather than ROC
  type: string
  inputBinding:
    prefix: --precision-sensitivity
- id: scores
  doc: if set, show scores on the plot
  type: boolean
  inputBinding:
    prefix: --scores
- id: title
  doc: title for the plot
  type: string
  inputBinding:
    prefix: --title
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- rocplot
