version 1.0

task NwSupport {
  input {
    Boolean? hlp
    File target_tree_filename_vertical_line
    File replicates_filename
  }
  command <<<
    nw_support \
      ~{target_tree_filename_vertical_line} \
      ~{replicates_filename} \
      ~{if (hlp) then "-hlp" else ""}
  >>>
  parameter_meta {
    hlp: ""
    target_tree_filename_vertical_line: ""
    replicates_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}