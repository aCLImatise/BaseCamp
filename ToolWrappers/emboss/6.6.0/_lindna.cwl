class: CommandLineTool
id: _lindna.cwl
inputs:
- id: in_blocktype
  doc: "menu       [Filled] Type of blocks (Values: Open (Open\nblocks); Filled (Filled\
    \ blocks); Outline\n(Black border))"
  type: boolean
  inputBinding:
    prefix: -blocktype
- id: in_graph_out
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean
  inputBinding:
    prefix: -graphout
- id: in_max_groups
  doc: "integer    [20] Maximum number of groups (Integer 1 or\nmore)"
  type: boolean
  inputBinding:
    prefix: -maxgroups
- id: in_max_labels
  doc: "integer    [10000] Maximum number of labels (Integer 1\nor more)"
  type: boolean
  inputBinding:
    prefix: -maxlabels
- id: in_inter_symbol
  doc: selection  [Straight] Type of junctions between blocks
  type: boolean
  inputBinding:
    prefix: -intersymbol
- id: in_inter_colour
  doc: "integer    [1] Colour of junctions between blocks\n(enter a colour number)\
    \ (Integer from 0 to\n15)"
  type: boolean
  inputBinding:
    prefix: -intercolour
- id: in_inter_ticks
  doc: boolean    [N] Horizontal junctions between ticks
  type: boolean
  inputBinding:
    prefix: -interticks
- id: in_gap_size
  doc: "integer    [0] A zero value allows the application to\nchoose a gap size (Integer\
    \ 0 or more)"
  type: boolean
  inputBinding:
    prefix: -gapsize
- id: in_tick_lines
  doc: boolean    [N] Vertical lines at the ruler's ticks
  type: boolean
  inputBinding:
    prefix: -ticklines
- id: in_textheight
  doc: "float      [1.0] Height of text. Enter a number <1.0 or\n>1.0 to decrease\
    \ or increase the size,\nrespectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -textheight
- id: in_text_length
  doc: "float      [1.0] Length of text. Enter a number <1.0 or\n>1.0 to decrease\
    \ or increase the size,\nrespectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -textlength
- id: in_margin
  doc: "float      [1.0] Width of left margin. This is the\nregion left to the groups\
    \ where the names of\nthe groups are displayed. Enter a number\n<1.0 or >1.0 to\
    \ decrease or increase the\nsize, respectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -margin
- id: in_tick_height
  doc: "float      [1.0] Height of ticks. Enter a number <1.0\nor >1.0 to decrease\
    \ or increase the size,\nrespectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -tickheight
- id: in_block_height
  doc: "float      [1] Height of blocks. Enter a number <1.0 or\n>1.0 to decrease\
    \ or increase the size,\nrespectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -blockheight
- id: in_range_height
  doc: "float      [1.0] Height of range ends. Enter a number\n<1.0 or >1.0 to decrease\
    \ or increase the\nsize, respectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -rangeheight
- id: in_gap_group
  doc: "float      [1.0] Space between groups. Enter a number\n<1.0 or >1.0 to decrease\
    \ or increase the\nsize, respectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -gapgroup
- id: in_post_ext
  doc: "float      [1.0] Space between text and ticks, blocks,\nand ranges. Enter\
    \ a number <1.0 or >1.0 to\ndecrease or increase the size, respectively\n(Number\
    \ 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -postext
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _lindna
