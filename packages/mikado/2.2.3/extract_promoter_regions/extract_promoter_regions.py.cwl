class: CommandLineTool
id: extract_promoter_regions.py.cwl
inputs:
- id: in_little
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_extract
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_promoter
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_regions
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_genes_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0
cwlVersion: v1.1
baseCommand:
- extract_promoter_regions.py
