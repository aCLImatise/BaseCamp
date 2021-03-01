class: CommandLineTool
id: anvi_script_gen_help_pages.cwl
inputs:
- id: in_debug
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-help-pages
