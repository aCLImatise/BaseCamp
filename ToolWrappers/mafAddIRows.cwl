class: CommandLineTool
id: mafAddIRows.cwl
inputs:
- id: in_n_beds
  doc: reads in list of bed files, one per species, with N locations
  type: string
  inputBinding:
    prefix: -nBeds
- id: in_add_n
  doc: adds rows of N's into maf blocks (rather than just annotating them)
  type: boolean
  inputBinding:
    prefix: -addN
- id: in_add_dash
  doc: "adds rows of -'s into maf blocks (rather than just annotating them)\n"
  type: boolean
  inputBinding:
    prefix: -addDash
- id: in_maf_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two_bit_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mafAddIRows
