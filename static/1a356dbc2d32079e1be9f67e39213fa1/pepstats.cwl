class: CommandLineTool
id: pepstats.cwl
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
- id: in_mono
  doc: boolean    [N] Use monoisotopic weights
  type: boolean?
  inputBinding:
    prefix: -mono
- id: in_acids
  doc: -pkdata             datafile   [Epk.dat] Values of pKa for amino acids
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
- pepstats
