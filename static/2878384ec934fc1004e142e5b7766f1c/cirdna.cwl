class: CommandLineTool
id: cirdna.cwl
inputs:
- id: in_blocktype
  doc: "menu       [Filled] Type of blocks (Values: Open (Open\nblocks); Filled (Filled\
    \ blocks); Outline\n(Black border))"
  type: boolean
  inputBinding:
    prefix: -blocktype
- id: in_po_sticks
  doc: selection  [Out] Ticks inside or outside the circle
  type: boolean
  inputBinding:
    prefix: -posticks
- id: in_pos_blocks
  doc: selection  [In] Text inside or outside the blocks
  type: boolean
  inputBinding:
    prefix: -posblocks
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
- id: in_origin_angle
  doc: "float      [90] Position in degrees of the molecule's\norigin on the circle\
    \ (Number from 0.000 to\n360.000)"
  type: boolean
  inputBinding:
    prefix: -originangle
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
  doc: "integer    [500] Interval between ticks in the ruler\n(Integer 0 or more)"
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
- id: in_tick_height
  doc: "float      [1.0] Height of ticks. Enter a number <1.0\nor >1.0 to decrease\
    \ or increase the size,\nrespectively (Number 0.000 or more)"
  type: boolean
  inputBinding:
    prefix: -tickheight
- id: in_block_height
  doc: "float      [1.0] Height of blocks. Enter a number <1.0\nor >1.0 to decrease\
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
- cirdna
