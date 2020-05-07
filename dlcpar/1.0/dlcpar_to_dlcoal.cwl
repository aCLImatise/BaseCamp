class: CommandLineTool
id: dlcpar_to_dlcoal.cwl
inputs:
- id: dlc_par_to_dl_coal
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: utility
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: converting
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: dlc_par
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: reconciliations
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: dl_coal
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: stree
  doc: species tree file in newick format
  type: string
  inputBinding:
    prefix: --stree
- id: s_map
  doc: gene to species map
  type: string
  inputBinding:
    prefix: --smap
- id: input_ext
  doc: 'input file extension (default: ".tree")'
  type: string
  inputBinding:
    prefix: --inputext
- id: output_ext
  doc: 'output file extension (default: "")'
  type: string
  inputBinding:
    prefix: --outputext
outputs: []
cwlVersion: v1.1
baseCommand:
- dlcpar_to_dlcoal
