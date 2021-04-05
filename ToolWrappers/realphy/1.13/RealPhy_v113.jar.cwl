class: CommandLineTool
id: RealPhy_v113.jar.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/realphy:1.13--0
cwlVersion: v1.1
baseCommand:
- RealPhy_v113.jar
