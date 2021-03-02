class: CommandLineTool
id: tabix++.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tabixpp:1.1.0--hd2e4403_4
cwlVersion: v1.1
baseCommand:
- tabix++
