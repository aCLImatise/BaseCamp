class: CommandLineTool
id: charge.cwl
inputs:
- id: in_window
  doc: integer    [5] Window length (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_aa_data
  doc: "datafile   [Eamino.dat] Amino acids properties and\nmolecular weight data\
    \ file"
  type: boolean
  inputBinding:
    prefix: -aadata
- id: in_plot
  doc: toggle     [N] Produce graphic
  type: boolean
  inputBinding:
    prefix: -plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- charge
