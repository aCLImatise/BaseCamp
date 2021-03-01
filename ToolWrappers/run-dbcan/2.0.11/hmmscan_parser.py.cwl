class: CommandLineTool
id: hmmscan_parser.py.cwl
inputs:
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- hmmscan-parser.py
