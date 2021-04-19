class: CommandLineTool
id: trim_long_introns.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0
cwlVersion: v1.1
baseCommand:
- trim_long_introns.py
