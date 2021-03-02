class: CommandLineTool
id: ragtag.py_updategff.cwl
inputs:
- id: in_update_misassembly_correction
  doc: update for misassembly correction (ragtag.correction.agp)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_genes_dot_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ragtag_dot_agp
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
  dockerPull: quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- ragtag.py
- updategff
