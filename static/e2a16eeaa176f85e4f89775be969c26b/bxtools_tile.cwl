class: CommandLineTool
id: bxtools_tile.cwl
inputs:
- id: in_verbose
  doc: Set verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_width
  doc: Width of the tile [1000]
  type: boolean?
  inputBinding:
    prefix: --width
- id: in_overlap
  doc: Overlap of the tiles [0]
  type: boolean?
  inputBinding:
    prefix: --overlap
- id: in_bed
  doc: Rather than tile genome, input BED with regions
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_tag
  doc: Tag other than BX to evaluate (e.g. MI)
  type: boolean?
  inputBinding:
    prefix: --tag
- id: in_bam_slash_sam_slash_cram
  doc: ''
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
- bxtools
- tile
