class: CommandLineTool
id: dlcoal_to_dlcpar.cwl
inputs:
- id: dl_coal_to_dlc_par
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
- id: dl_coal
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
- id: dlc_par
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
  doc: 'input file extension (default: ".coal.tree")'
  type: string
  inputBinding:
    prefix: --inputext
- id: output_ext
  doc: 'output file extension (default: ".dlcpar")'
  type: string
  inputBinding:
    prefix: --outputext
- id: use_locus_recon
  doc: if set, use locus recon file rather than MPR
  type: boolean
  inputBinding:
    prefix: --use-locus-recon
- id: no_delay
  doc: if set, disallow duplication between speciation and coalescence
  type: boolean
  inputBinding:
    prefix: --no-delay
outputs: []
cwlVersion: v1.1
baseCommand:
- dlcoal_to_dlcpar
