class: CommandLineTool
id: anvi_script_tabulate.cwl
inputs:
- id: in_debug
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_max_width
  doc: ''
  type: long?
  inputBinding:
    prefix: --max-width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-tabulate
