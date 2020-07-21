class: CommandLineTool
id: ../../../add_protein_annotation.py.cwl
inputs:
- id: fast_a
  doc: A fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: in
  doc: A mProphet output file
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: A modified mProphet output file
  type: string
  inputBinding:
    prefix: --out
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: annotate
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: csv
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: with
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: protein
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: descriptions
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: fast_a_dot
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: it
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: will
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: search
  doc: ''
  type: string
  inputBinding:
    position: 13
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 14
- id: var_18
  doc: ''
  type: string
  inputBinding:
    position: 15
- id: column
  doc: ''
  type: string
  inputBinding:
    position: 16
- id: named
  doc: ''
  type: string
  inputBinding:
    position: 17
- id: protein_name
  doc: ''
  type: string
  inputBinding:
    position: 18
outputs: []
cwlVersion: v1.1
baseCommand:
- add_protein_annotation.py
