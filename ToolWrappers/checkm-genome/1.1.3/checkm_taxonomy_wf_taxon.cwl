class: CommandLineTool
id: checkm_taxonomy_wf_taxon.cwl
inputs:
- id: in_individual_markers
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --individual_markers
- id: in_g
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_nt
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --nt
- id: in_ali
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --ali
- id: in_check_m
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_taxonomy_wf
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
- taxonomy_wf
- taxon
