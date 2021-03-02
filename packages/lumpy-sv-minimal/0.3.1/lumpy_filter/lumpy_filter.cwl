class: CommandLineTool
id: lumpy_filter.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lumpy-sv-minimal:0.3.1--h5ef6573_0
cwlVersion: v1.1
baseCommand:
- lumpy_filter
