class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/proteins_not_in_library.py.cwl
inputs:
- id: fast_a
  doc: A fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: csv_file_column
  doc: A csv file with the column ProteinName
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: A csv output file containing all proteins not in the csv file
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
- id: display
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: which
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: proteins
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: were
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: not
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: present
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: var_12
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: var_13
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: library_dot
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- proteins_not_in_library.py
