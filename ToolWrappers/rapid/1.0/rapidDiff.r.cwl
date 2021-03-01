class: CommandLineTool
id: rapidDiff.r.cwl
inputs:
- id: in_expand_dot_grid
  doc: 'Loading required package: IRanges'
  type: string
  inputBinding:
    position: 0
- id: in_lowess
  doc: 'Error in file(file, "rt") : cannot open the connection'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rapidDiff.r
