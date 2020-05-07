class: CommandLineTool
id: mafAddIRows.cwl
inputs:
- id: maf_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: two_bit_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: n_beds
  doc: reads in list of bed files, one per species, with N locations
  type: string
  inputBinding:
    prefix: -nBeds
- id: add_n
  doc: adds rows of N's into maf blocks (rather than just annotating them)
  type: boolean
  inputBinding:
    prefix: -addN
- id: add_dash
  doc: adds rows of -'s into maf blocks (rather than just annotating them)
  type: boolean
  inputBinding:
    prefix: -addDash
outputs: []
cwlVersion: v1.1
baseCommand:
- mafAddIRows
