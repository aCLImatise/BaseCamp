class: CommandLineTool
id: PretextGraph.sse41.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pretextgraph:0.0.5--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- PretextGraph.sse41
