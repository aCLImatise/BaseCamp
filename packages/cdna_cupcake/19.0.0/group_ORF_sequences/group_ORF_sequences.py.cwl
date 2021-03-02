class: CommandLineTool
id: group_ORF_sequences.py.cwl
inputs:
- id: in_is_p_bid
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --is_pbid
- id: in_de_duplicate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_orf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_faa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file_dot
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_input_faa
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- group_ORF_sequences.py
