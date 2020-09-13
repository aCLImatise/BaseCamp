version 1.0

task NwMatch {
  input {
    Boolean? hv
    File target_trees_filename_vertical_line
    String pattern
  }
  command <<<
    nw_match \
      ~{target_trees_filename_vertical_line} \
      ~{pattern} \
      ~{if (hv) then "-hv" else ""}
  >>>
  parameter_meta {
    hv: ""
    target_trees_filename_vertical_line: ""
    pattern: ""
  }
  output {
    File out_stdout = stdout()
  }
}