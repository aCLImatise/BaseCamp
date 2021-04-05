class: CommandLineTool
id: panoptes.cwl
inputs:
- id: in_ip
  doc: 'Set the IP of the panoptes server [Default: 0.0.0.0]'
  type: double?
  inputBinding:
    prefix: --ip
- id: in_port
  doc: 'The port of the server [Default: 5000]'
  type: long?
  inputBinding:
    prefix: --port
- id: in_verbose
  doc: Be Verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panoptes-ui:0.2.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- panoptes
