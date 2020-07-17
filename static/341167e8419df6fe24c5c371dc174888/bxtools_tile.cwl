class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bxtools_tile.cwl
inputs:
- id: verbose
  doc: Set verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: width
  doc: Width of the tile [1000]
  type: boolean
  inputBinding:
    prefix: --width
- id: overlap
  doc: Overlap of the tiles [0]
  type: boolean
  inputBinding:
    prefix: --overlap
- id: bed
  doc: Rather than tile genome, input BED with regions
  type: boolean
  inputBinding:
    prefix: --bed
- id: tag
  doc: Tag other than BX to evaluate (e.g. MI)
  type: boolean
  inputBinding:
    prefix: --tag
- id: bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- tile
