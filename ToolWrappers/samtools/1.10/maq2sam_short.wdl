version 1.0

task Maq2samshort {
  input {
    Int maq_two_sam
    String in_dot_map
    String? read_group
  }
  command <<<
    maq2sam_short \
      ~{maq_two_sam} \
      ~{in_dot_map} \
      ~{read_group}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maq_two_sam: ""
    in_dot_map: ""
    read_group: ""
  }
  output {
    File out_stdout = stdout()
  }
}