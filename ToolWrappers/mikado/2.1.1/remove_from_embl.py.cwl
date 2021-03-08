class: CommandLineTool
id: remove_from_embl.py.cwl
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
- id: in_remove
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sequences
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_specific
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_given
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_swissprot
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_file_dot
  doc: ''
  type: File
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0
cwlVersion: v1.1
baseCommand:
- remove_from_embl.py
