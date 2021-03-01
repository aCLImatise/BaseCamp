class: CommandLineTool
id: oe2fps.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chemfp:1.6.1--py27h3dcb392_0
cwlVersion: v1.1
baseCommand:
- oe2fps
