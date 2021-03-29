class: CommandLineTool
id: coolbox_run_webapp.cwl
inputs:
- id: in_voila_args
  doc: "=\e[4mVOILA_ARGS\e[0m\nDefault: '--Voila.ip=0.0.0.0'\nArguments for run jupyter.\n"
  type: boolean?
  inputBinding:
    prefix: --voila_args
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- coolbox
- run_webapp
