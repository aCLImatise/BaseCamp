class: CommandLineTool
id: daijin.cwl
inputs:
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_directed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_acyclic
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_gene
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_reconstruction
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_rna
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_seq
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_data_dot
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0
cwlVersion: v1.1
baseCommand:
- daijin
