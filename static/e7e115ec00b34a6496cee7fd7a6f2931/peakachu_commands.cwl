class: CommandLineTool
id: peakachu_commands.cwl
inputs:
- id: in_peak_a_chu
  doc: ''
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
- commands
