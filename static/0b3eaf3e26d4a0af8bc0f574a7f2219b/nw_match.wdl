version 1.0

task NwMatch {
  input {
    Boolean? hv
    String target_trees_filename_vertical_line
    String pattern
  }
  command <<<
    nw_match \
      ~{target_trees_filename_vertical_line} \
      ~{pattern} \
      ~{true="-hv" false="" hv}
  >>>
  parameter_meta {
    hv: ""
    target_trees_filename_vertical_line: ""
    pattern: ""
  }
}