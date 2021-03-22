class: CommandLineTool
id: sam_to_collapsed_gff.py.cwl
inputs:
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_collapsed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sam_filename
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- sam_to_collapsed_gff.py
