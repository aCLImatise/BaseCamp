class: CommandLineTool
id: split_fasta.py.cwl
inputs:
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_split
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sequences
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_fixed
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 8
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_multiple
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_files_dot
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
  dockerPull: quay.io/biocontainers/mikado:2.2.2--py37hfa133b6_0
cwlVersion: v1.1
baseCommand:
- split_fasta.py
