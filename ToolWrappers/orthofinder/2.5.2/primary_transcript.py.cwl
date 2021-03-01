class: CommandLineTool
id: primary_transcript.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/orthofinder:2.5.2--0
cwlVersion: v1.1
baseCommand:
- primary_transcript.py
