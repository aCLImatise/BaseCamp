class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tripaille_phylogeny_ARGS.cwl
inputs:
- id: tri_paille
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: phylogeny
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- phylogeny
- ARGS
