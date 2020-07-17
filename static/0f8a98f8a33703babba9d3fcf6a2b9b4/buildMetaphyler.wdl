version 1.0

task BuildMetaphyler.pl {
  input {
    String norm_vertical_line_un_norm
    String fast_a_one
    String fast_a_two
    Int lengths
    String taxonomy
    String blast
    String prefix
  }
  command <<<
    buildMetaphyler.pl \
      ~{norm_vertical_line_un_norm} \
      ~{fast_a_one} \
      ~{fast_a_two} \
      ~{lengths} \
      ~{taxonomy} \
      ~{blast} \
      ~{prefix}
  >>>
  parameter_meta {
    norm_vertical_line_un_norm: ""
    fast_a_one: ""
    fast_a_two: ""
    lengths: ""
    taxonomy: ""
    blast: ""
    prefix: ""
  }
}