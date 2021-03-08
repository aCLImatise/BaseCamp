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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ultraheatmap:1.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ultraheatmap
