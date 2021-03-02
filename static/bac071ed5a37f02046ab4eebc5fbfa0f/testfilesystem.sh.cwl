class: CommandLineTool
id: testfilesystem.sh.cwl
inputs:
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_log
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_size
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_ways
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_interval_in_seconds
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- testfilesystem.sh
