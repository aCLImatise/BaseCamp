version 1.0

task Lindna {
  input {
    Boolean? blocktype
    Boolean? graph_out
    Boolean? max_groups
    Boolean? max_labels
    Boolean? inter_symbol
    Boolean? inter_colour
    Boolean? inter_ticks
    Boolean? gap_size
    Boolean? tick_lines
    Boolean? textheight
    Boolean? text_length
    Boolean? margin
    Boolean? tick_height
    Boolean? block_height
    Boolean? range_height
    Boolean? gap_group
    Boolean? post_ext
  }
  command <<<
    _lindna \
      ~{if (blocktype) then "-blocktype" else ""} \
      ~{if (graph_out) then "-graphout" else ""} \
      ~{if (max_groups) then "-maxgroups" else ""} \
      ~{if (max_labels) then "-maxlabels" else ""} \
      ~{if (inter_symbol) then "-intersymbol" else ""} \
      ~{if (inter_colour) then "-intercolour" else ""} \
      ~{if (inter_ticks) then "-interticks" else ""} \
      ~{if (gap_size) then "-gapsize" else ""} \
      ~{if (tick_lines) then "-ticklines" else ""} \
      ~{if (textheight) then "-textheight" else ""} \
      ~{if (text_length) then "-textlength" else ""} \
      ~{if (margin) then "-margin" else ""} \
      ~{if (tick_height) then "-tickheight" else ""} \
      ~{if (block_height) then "-blockheight" else ""} \
      ~{if (range_height) then "-rangeheight" else ""} \
      ~{if (gap_group) then "-gapgroup" else ""} \
      ~{if (post_ext) then "-postext" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    blocktype: "menu       [Filled] Type of blocks (Values: Open (Open\\nblocks); Filled (Filled blocks); Outline\\n(Black border))"
    graph_out: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    max_groups: "integer    [20] Maximum number of groups (Integer 1 or\\nmore)"
    max_labels: "integer    [10000] Maximum number of labels (Integer 1\\nor more)"
    inter_symbol: "selection  [Straight] Type of junctions between blocks"
    inter_colour: "integer    [1] Colour of junctions between blocks\\n(enter a colour number) (Integer from 0 to\\n15)"
    inter_ticks: "boolean    [N] Horizontal junctions between ticks"
    gap_size: "integer    [0] A zero value allows the application to\\nchoose a gap size (Integer 0 or more)"
    tick_lines: "boolean    [N] Vertical lines at the ruler's ticks"
    textheight: "float      [1.0] Height of text. Enter a number <1.0 or\\n>1.0 to decrease or increase the size,\\nrespectively (Number 0.000 or more)"
    text_length: "float      [1.0] Length of text. Enter a number <1.0 or\\n>1.0 to decrease or increase the size,\\nrespectively (Number 0.000 or more)"
    margin: "float      [1.0] Width of left margin. This is the\\nregion left to the groups where the names of\\nthe groups are displayed. Enter a number\\n<1.0 or >1.0 to decrease or increase the\\nsize, respectively (Number 0.000 or more)"
    tick_height: "float      [1.0] Height of ticks. Enter a number <1.0\\nor >1.0 to decrease or increase the size,\\nrespectively (Number 0.000 or more)"
    block_height: "float      [1] Height of blocks. Enter a number <1.0 or\\n>1.0 to decrease or increase the size,\\nrespectively (Number 0.000 or more)"
    range_height: "float      [1.0] Height of range ends. Enter a number\\n<1.0 or >1.0 to decrease or increase the\\nsize, respectively (Number 0.000 or more)"
    gap_group: "float      [1.0] Space between groups. Enter a number\\n<1.0 or >1.0 to decrease or increase the\\nsize, respectively (Number 0.000 or more)"
    post_ext: "float      [1.0] Space between text and ticks, blocks,\\nand ranges. Enter a number <1.0 or >1.0 to\\ndecrease or increase the size, respectively\\n(Number 0.000 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}