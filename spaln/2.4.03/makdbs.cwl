class: CommandLineTool
id: ../../../makdbs.cwl
inputs:
- id: dna_protein_sequence
  doc: '[D|P] : DNA or Protein sequence'
  type: boolean
  inputBinding:
    prefix: -K
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: s_srcdir
  doc: ''
  type: boolean
  inputBinding:
    prefix: -sSrcdir
- id: p_dst_dir
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pDstdir
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- makdbs
