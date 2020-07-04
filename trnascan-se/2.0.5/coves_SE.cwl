class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/coves_SE.cwl
inputs:
- id: show_pairs_watsoncrick
  doc: ': show all pairs, not just Watson-Crick'
  type: boolean
  inputBinding:
    prefix: -a
- id: set_expected_default
  doc: ': set expected background GC composition (default 0.5)'
  type: string
  inputBinding:
    prefix: -g
- id: mountain_representation_structural
  doc: ': mountain representation of structural alignment'
  type: boolean
  inputBinding:
    prefix: -m
- id: secondary_structure_string
  doc: ': secondary structure string representation of  structural alignment'
  type: boolean
  inputBinding:
    prefix: -s
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: coves
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- coves-SE
