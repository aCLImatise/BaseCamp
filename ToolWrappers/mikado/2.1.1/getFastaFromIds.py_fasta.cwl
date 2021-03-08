class: CommandLineTool
id: getFastaFromIds.py_fasta.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_get_fasta_from_ids_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0
cwlVersion: v1.1
baseCommand:
- getFastaFromIds.py
- fasta
