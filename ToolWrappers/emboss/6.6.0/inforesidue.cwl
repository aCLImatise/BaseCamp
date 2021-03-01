class: CommandLineTool
id: inforesidue.cwl
inputs:
- id: in_aa_data
  doc: datafile   [Eamino.dat] Amino acid properties
  type: boolean?
  inputBinding:
    prefix: -aadata
- id: in_mw_data
  doc: datafile   [Emolwt.dat] Molecular weight data for amino
  type: boolean?
  inputBinding:
    prefix: -mwdata
- id: in_acids
  doc: 'General qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- inforesidue
