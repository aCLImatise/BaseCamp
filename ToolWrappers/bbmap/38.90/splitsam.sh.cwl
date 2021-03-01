class: CommandLineTool
id: splitsam.sh.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_plus_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_minus_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_unmapped_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- splitsam.sh
