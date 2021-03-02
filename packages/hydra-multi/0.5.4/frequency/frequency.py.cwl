class: CommandLineTool
id: frequency.py.cwl
inputs:
- id: in_detail_filename
  doc: detail filename
  type: File?
  inputBinding:
    prefix: -d
- id: in_final_filename
  doc: final filename
  type: File?
  inputBinding:
    prefix: -f
- id: in_config_filename
  doc: config filename
  type: File?
  inputBinding:
    prefix: -c
- id: in_print_column_headers
  doc: do not print column headers
  type: boolean?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- frequency.py
