version 1.0

task BuildMetaphylerpl {
  input {
    String norm_vertical_line_un_norm
    Int fast_a_one
    Int fast_a_two
    String lengths
    String taxonomy
    String blast
    String prefix
  }
  command <<<
    buildMetaphyler_pl \
      ~{norm_vertical_line_un_norm} \
      ~{fast_a_one} \
      ~{fast_a_two} \
      ~{lengths} \
      ~{taxonomy} \
      ~{blast} \
      ~{prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    norm_vertical_line_un_norm: ""
    fast_a_one: ""
    fast_a_two: ""
    lengths: ""
    taxonomy: ""
    blast: ""
    prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}