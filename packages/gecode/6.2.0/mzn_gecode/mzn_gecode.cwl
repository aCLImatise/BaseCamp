class: CommandLineTool
id: mzn_gecode.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0
cwlVersion: v1.1
baseCommand:
- mzn-gecode
