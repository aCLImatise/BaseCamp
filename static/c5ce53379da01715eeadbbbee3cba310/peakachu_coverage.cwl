class: CommandLineTool
id: peakachu_coverage.cwl
inputs:
- id: in_p
  doc: ''
  type: long?
  inputBinding:
    prefix: -p
- id: in_project_folder
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0
cwlVersion: v1.1
baseCommand:
- peakachu
- coverage
