class: CommandLineTool
id: PretextGraph.avx2.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pretextgraph:0.0.4--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- PretextGraph.avx2
