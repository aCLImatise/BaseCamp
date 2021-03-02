class: CommandLineTool
id: ChromImpute.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chromimpute:1.0.3--h1341992_0
cwlVersion: v1.1
baseCommand:
- ChromImpute
