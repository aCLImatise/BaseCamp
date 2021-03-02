class: CommandLineTool
id: rtg_rocplot.cwl
inputs:
- id: in_curve
  doc: "ROC data file with title optionally specified\n(path[=title]). May be specified\
    \ 0 or more times"
  type: File?
  inputBinding:
    prefix: --curve
- id: in_png
  doc: if set, output a PNG image to the given file
  type: File?
  inputBinding:
    prefix: --png
- id: in_svg
  doc: if set, output a SVG image to the given file
  type: File?
  inputBinding:
    prefix: --svg
- id: in_zoom
  doc: "show a zoomed view with the given coordinates,\nsupplied in the form <xmax>,<ymax>\
    \ or\n<xmin>,<ymin>,<xmax>,<ymax>"
  type: string?
  inputBinding:
    prefix: --zoom
- id: in_hide_side_pane
  doc: if set, hide the side pane from the GUI on
  type: boolean?
  inputBinding:
    prefix: --hide-sidepane
- id: in_line_width
  doc: sets the plot line width (Default is 2)
  type: long?
  inputBinding:
    prefix: --line-width
- id: in_precision_sensitivity
  doc: set, plot precision vs sensitivity rather than
  type: string?
  inputBinding:
    prefix: --precision-sensitivity
- id: in_title
  doc: title for the plot
  type: string?
  inputBinding:
    prefix: --title
- id: in_startup
  doc: --interpolate           if set, interpolate curves at regular intervals
  type: string
  inputBinding:
    position: 0
- id: in_roc
  doc: --scores                if set, show scores on the plot
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_png
  doc: if set, output a PNG image to the given file
  type: File?
  outputBinding:
    glob: $(inputs.in_png)
- id: out_svg
  doc: if set, output a SVG image to the given file
  type: File?
  outputBinding:
    glob: $(inputs.in_svg)
hints: []
cwlVersion: v1.1
baseCommand:
- rtg
- rocplot
