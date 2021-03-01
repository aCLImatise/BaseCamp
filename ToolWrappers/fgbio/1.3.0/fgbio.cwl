class: CommandLineTool
id: fgbio.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fgbio:1.3.0--0
cwlVersion: v1.1
baseCommand:
- fgbio
