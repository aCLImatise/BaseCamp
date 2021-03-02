class: CommandLineTool
id: applauncher.cwl
inputs:
- id: in_list
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -list
- id: in_app_launcher
  doc: applauncher -help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0
cwlVersion: v1.1
baseCommand:
- applauncher
