class: CommandLineTool
id: data_stat.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- data_stat
