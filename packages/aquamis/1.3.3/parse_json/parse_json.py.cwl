class: CommandLineTool
id: parse_json.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aquamis:1.3.3--0
cwlVersion: v1.1
baseCommand:
- parse_json.py
