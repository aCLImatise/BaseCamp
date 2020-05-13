class: CommandLineTool
id: rgt_viz_integration.cwl
inputs:
- id: i_html
  doc: Integrate all the html files within the given directory and generate index.html
    for all plots.
  type: boolean
  inputBinding:
    prefix: -ihtml
- id: l2m
  doc: Convert a given file list in txt format into a experimental matrix.
  type: string
  inputBinding:
    prefix: -l2m
- id: o
  doc: Define the folder of the output file.
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- integration
