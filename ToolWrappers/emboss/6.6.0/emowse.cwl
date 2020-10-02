class: CommandLineTool
id: emowse.cwl
inputs:
- id: in_weight
  doc: integer    [0] Whole sequence molwt (Any integer value)
  type: boolean
  inputBinding:
    prefix: -weight
- id: in_mono
  doc: boolean    [N] Use monoisotopic weights
  type: boolean
  inputBinding:
    prefix: -mono
- id: in_mw_data
  doc: datafile   [Emolwt.dat] Molecular weights data file
  type: boolean
  inputBinding:
    prefix: -mwdata
- id: in_frequencies
  doc: datafile   [Efreqs.dat] Amino acid frequencies data
  type: boolean
  inputBinding:
    prefix: -frequencies
- id: in_pc_range
  doc: "integer    [25] Allowed whole sequence weight\nvariability (Integer from 0\
    \ to 75)"
  type: boolean
  inputBinding:
    prefix: -pcrange
- id: in_tolerance
  doc: float      [0.1] Tolerance (Number from 0.100 to 1.000)
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: in_partials
  doc: "float      [0.4] Partials factor (Number from 0.100 to\n1.000)"
  type: boolean
  inputBinding:
    prefix: -partials
- id: in_file
  doc: '-enzyme             menu       [1] Enzyme or reagent (Values: 1 (Trypsin);'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- emowse
