class: CommandLineTool
id: draw_basepair_track.pl.cwl
inputs:
- id: thickness
  doc: Thickness in pixels of the drawn lines. Defaults to 2.
  type: string
  inputBinding:
    prefix: --thickness
- id: width
  doc: Width in pixels of each image tile. Defaults to 2000.
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: Height in pixels of the image track. Defaults to 100.
  type: string
  inputBinding:
    prefix: --height
- id: no_links
  doc: If passed, do not use filesystem hardlinks to compress duplicate tiles.
  type: boolean
  inputBinding:
    prefix: --nolinks
outputs: []
cwlVersion: v1.1
baseCommand:
- draw-basepair-track.pl
