class: CommandLineTool
id: ASCIIGenome.jar.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/asciigenome:1.16.0--0
cwlVersion: v1.1
baseCommand:
- ASCIIGenome.jar
