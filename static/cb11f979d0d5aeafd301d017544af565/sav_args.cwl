class: CommandLineTool
id: sav_args.cwl
inputs:
- id: in_sav
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sub_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/savvy:2.0.1--h0808e92_0
cwlVersion: v1.1
baseCommand:
- sav
- args
