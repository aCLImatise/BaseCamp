class: CommandLineTool
id: nonpareil.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nonpareil:3.3.4--r40hc9558a2_0
cwlVersion: v1.1
baseCommand:
- nonpareil
