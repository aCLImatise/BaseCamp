class: CommandLineTool
id: bwameth.py.cwl
inputs:
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bisulfite
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_converted
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_an
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_in_silico
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_using
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_me_mdot
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bwameth.py
