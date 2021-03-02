class: CommandLineTool
id: igv_jasmine.cwl
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
- igv_jasmine
