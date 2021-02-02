class: CommandLineTool
id: mafAddQRows.cwl
inputs:
- id: in_divisor
  doc: is value to divide Q value by.  Default is 5.
  type: long
  inputBinding:
    prefix: -divisor
- id: in_species_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_maf
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
- mafAddQRows
