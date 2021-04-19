class: CommandLineTool
id: uniprot_support.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/upimapi:1.1.4--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- uniprot_support.py
