class: CommandLineTool
id: bbstats.sh.cwl
inputs:
- id: in_stats_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- bbstats.sh
