class: CommandLineTool
id: fasta_formatter.cwl
inputs:
- id: in_e
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_w
  doc: ''
  type: string?
  inputBinding:
    prefix: -w
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_aaaa_ag_gggg
  doc: CCCCCTTTTT
  type: string
  inputBinding:
    position: 0
- id: in_agc_tn
  doc: 'Output example with unlimited line width [-w 0]:'
  type: string
  inputBinding:
    position: 1
- id: in_a_aaaagggggccccctttttagctn
  doc: 'Output example with max. line width=7 [-w 7]:'
  type: string
  inputBinding:
    position: 0
- id: in_aaaa_agg
  doc: GGGTTTT
  type: string
  inputBinding:
    position: 0
- id: in_tccc_cca
  doc: GCTN
  type: string
  inputBinding:
    position: 1
- id: in_my_id
  doc: AAAAAGGGGGCCCCCTTTTAGCTN
  type: string
  inputBinding:
    position: 0
- id: in_aaa_ggg_ttt_ccc
  doc: '>EMPTY-SEQUENCE'
  type: string
  inputBinding:
    position: 0
- id: in_aagtagtagtagtagt
  doc: GTATTTTATAT
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
- fasta_formatter
