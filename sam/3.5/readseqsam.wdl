version 1.0

task Readseqsam {
  input {
    Boolean? wid
    Boolean? tab
    Boolean? col
    Boolean? gap
    Boolean? name_right
    Boolean? name_top
    Boolean? num_right
    Boolean? num_top
    Boolean? match
    Boolean? inter
    Boolean? options
    String readseq
    String in_dot_seq
  }
  command <<<
    readseqsam \
      ~{readseq} \
      ~{in_dot_seq} \
      ~{true="-wid" false="" wid} \
      ~{true="-tab" false="" tab} \
      ~{true="-col" false="" col} \
      ~{true="-gap" false="" gap} \
      ~{true="-nameright" false="" name_right} \
      ~{true="-nametop" false="" name_top} \
      ~{true="-numright" false="" num_right} \
      ~{true="-numtop" false="" num_top} \
      ~{true="-match" false="" match} \
      ~{true="-inter" false="" inter} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    wid: "[th]=#            sequence line width"
    tab: "=#                left indent"
    col: "[space]=#         column space within sequence line on output"
    gap: "[count]           count gap chars in sequence numbers"
    name_right: "[=#]   name on left/right side [=max width]"
    name_top: "name at top/bottom"
    num_right: "seq index on left/right side"
    num_top: "index on top/bottom"
    match: "[=.]            use match base for 2..n species"
    inter: "[line=#]        blank line(s) between sequence blocks"
    options: ""
    readseq: ""
    in_dot_seq: ""
  }
}