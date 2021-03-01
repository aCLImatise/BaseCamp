class: CommandLineTool
id: checkm_taxon_set_marker_file.cwl
inputs:
- id: in_tmpdir
  doc: ''
  type: string?
  inputBinding:
    prefix: --tmpdir
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_check_m
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tax_on_set
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- taxon_set
- marker_file
