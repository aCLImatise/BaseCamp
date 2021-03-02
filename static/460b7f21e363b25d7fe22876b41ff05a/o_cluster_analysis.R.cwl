class: CommandLineTool
id: o_cluster_analysis.R.cwl
inputs:
- id: in_permute
  doc: 'Error in X11(width = 12, height = 10) : X11 module cannot be loaded'
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
- o-cluster-analysis.R
