version 1.0

task HalAddToBranch {
  input {
    String in_file
    String bot_alignment_file
    String top_alignment_file
    String parent_name
    String insert_name
    String child_name
    String leaf_name
    String upper_branch_length
    String leaf_branch_length
  }
  command <<<
    halAddToBranch \
      ~{in_file} \
      ~{bot_alignment_file} \
      ~{top_alignment_file} \
      ~{parent_name} \
      ~{insert_name} \
      ~{child_name} \
      ~{leaf_name} \
      ~{upper_branch_length} \
      ~{leaf_branch_length}
  >>>
  parameter_meta {
    in_file: ""
    bot_alignment_file: ""
    top_alignment_file: ""
    parent_name: ""
    insert_name: ""
    child_name: ""
    leaf_name: ""
    upper_branch_length: ""
    leaf_branch_length: ""
  }
}