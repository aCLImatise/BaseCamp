class: CommandLineTool
id: crispritz.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispritz:2.4.3--py36hbd375b7_0
cwlVersion: v1.1
baseCommand:
- crispritz.py
