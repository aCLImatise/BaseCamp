class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/draw_basepair_track.pl.cwl
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
- id: bin_slash_draw_base_pair_track_do_tpl
  doc: --gff <GFF file>                      \ [ --out <JSON directory> ]            \
    [ --tracklabel <track identifier> ]   \ [ --key <human-readable track name> ]
    \ [ --bgcolor <R,G,B> ]                 \ [ --fgcolor <R,G,B> ]                 \
    [ --thickness <line thickness> ]      \ [ --width <tile width> ]              \
    [ --height <tile height> ]            \ [ --nolinks ]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- draw-basepair-track.pl
