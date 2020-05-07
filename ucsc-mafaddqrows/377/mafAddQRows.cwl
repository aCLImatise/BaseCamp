class: CommandLineTool
id: mafAddQRows.cwl
inputs:
- id: species_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: divisor
  doc: is value to divide Q value by.  Default is 5.
  type: string
  inputBinding:
    prefix: -divisor
outputs: []
cwlVersion: v1.1
baseCommand:
- mafAddQRows
