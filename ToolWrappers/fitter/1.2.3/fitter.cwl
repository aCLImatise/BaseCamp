class: CommandLineTool
id: fitter.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fitter:1.2.3--pyh145b6a8_0
cwlVersion: v1.1
baseCommand:
- fitter
