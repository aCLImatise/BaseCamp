class: CommandLineTool
id: pilercr.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/piler-cr:1.06--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- pilercr
