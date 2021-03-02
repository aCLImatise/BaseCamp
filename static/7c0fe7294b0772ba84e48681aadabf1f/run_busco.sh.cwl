class: CommandLineTool
id: run_busco.sh.cwl
inputs:
- id: in_python_three
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_busco_configurator_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_config_dot_in_idot_default
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_your_config_do_tini
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
  dockerPull: quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1
cwlVersion: v1.1
baseCommand:
- run_busco.sh
