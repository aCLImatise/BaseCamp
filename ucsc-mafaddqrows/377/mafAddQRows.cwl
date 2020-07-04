class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafAddQRows.cwl
inputs:
- id: divisor
  doc: is value to divide Q value by.  Default is 5.
  type: string
  inputBinding:
    prefix: -divisor
- id: species_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafAddQRows
