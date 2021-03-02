class: CommandLineTool
id: rapidVis.r.cwl
inputs:
- id: in_viridis_pal
  doc: "Attaching package: 'gplots'"
  type: string
  inputBinding:
    position: 0
- id: in_lowess
  doc: 'Error in if (plotMethod == "stats") { : '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rapidVis.r
