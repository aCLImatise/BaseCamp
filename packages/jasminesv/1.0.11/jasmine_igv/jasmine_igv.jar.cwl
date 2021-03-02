class: CommandLineTool
id: jasmine_igv.jar.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jasminesv:1.0.11--0
cwlVersion: v1.1
baseCommand:
- jasmine_igv.jar
