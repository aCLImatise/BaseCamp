class: CommandLineTool
id: o_metaMDS_analysis.R.cwl
inputs:
- id: in_permute
  doc: 'Error in file(file, "rt") : cannot open the connection'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- o-metaMDS-analysis.R
