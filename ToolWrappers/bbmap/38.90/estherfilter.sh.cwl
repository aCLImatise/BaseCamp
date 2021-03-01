class: CommandLineTool
id: estherfilter.sh.cwl
inputs:
- id: in_query
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- estherfilter.sh
