class: CommandLineTool
id: ultraheatmap.cwl
inputs:
- id: in_compute_ordered_matrix
  doc: addFeatureToMatrix
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ultraheatmap
