class: CommandLineTool
id: ../../../remove_from_embl.py.cwl
inputs:
- id: organism_to_excluded
  doc: Organism to be excluded
  type: string
  inputBinding:
    prefix: --organism
- id: format
  doc: 'Output format. Choices: fasta. Default: fasta.'
  type: string
  inputBinding:
    prefix: --format
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: remove
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: specific
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_8
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: given
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: var_10
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: var_12
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: swissprot
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: file_dot
  doc: ''
  type: File
  inputBinding:
    position: 12
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_from_embl.py
