class: CommandLineTool
id: Plot_COG_Abundance.R.cwl
inputs:
- id: in_lowess
  doc: 'Error in file(file, "rt") : cannot open the connection'
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
- Plot_COG_Abundance.R
