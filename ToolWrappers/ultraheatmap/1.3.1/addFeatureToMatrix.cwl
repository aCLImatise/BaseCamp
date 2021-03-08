class: CommandLineTool
id: addFeatureToMatrix.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ultraheatmap:1.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- addFeatureToMatrix
