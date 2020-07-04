version 1.0

task NwSupport {
  input {
    Boolean? hlp
    String target_tree_filename_vertical_line
    String replicates_filename
  }
  command <<<
    nw_support \
      ~{target_tree_filename_vertical_line} \
      ~{replicates_filename} \
      ~{true="-hlp" false="" hlp}
  >>>
  parameter_meta {
    hlp: ""
    target_tree_filename_vertical_line: ""
    replicates_filename: ""
  }
}