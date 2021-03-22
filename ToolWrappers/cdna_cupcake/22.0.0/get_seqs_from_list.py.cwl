class: CommandLineTool
id: get_seqs_from_list.py.cwl
inputs:
- id: in_partial
  doc: OK if seq IDs only match the beginning
  type: boolean?
  inputBinding:
    prefix: --partial
- id: in_exclude
  doc: Output sequences NOT in the list, default OFF
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_list_filename
  doc: List of sequence IDs to extract
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- get_seqs_from_list.py
