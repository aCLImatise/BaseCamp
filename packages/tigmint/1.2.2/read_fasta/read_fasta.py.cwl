class: CommandLineTool
id: read_fasta.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tigmint:1.2.2--py_1
cwlVersion: v1.1
baseCommand:
- read_fasta.py
