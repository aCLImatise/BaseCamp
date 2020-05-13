class: CommandLineTool
id: InterProphetParser.cwl
inputs:
- id: length
  doc: '- Use Peptide Length model'
  type: long
  inputBinding:
    position: 0
- id: no_fp_km
  doc: '- Do not use FPKM model'
  type: string
  inputBinding:
    position: 1
- id: non_ss
  doc: '- Do not use NSS model'
  type: string
  inputBinding:
    position: 2
- id: non_se
  doc: '- Do not use NSE model'
  type: string
  inputBinding:
    position: 3
- id: non_rs
  doc: '- Do not use NRS model'
  type: string
  inputBinding:
    position: 4
- id: non_sm
  doc: '- Do not use NSM model'
  type: string
  inputBinding:
    position: 5
- id: non_sp
  doc: '- Do not use NSP model'
  type: string
  inputBinding:
    position: 6
- id: sharp_nse
  doc: '- Use more discriminating model for NSE in SWATH mode '
  type: string
  inputBinding:
    position: 7
- id: non_si
  doc: '- Do not use NSI model'
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- InterProphetParser
