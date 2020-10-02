version 1.0

task MafMeFirst {
  input {
    String in_dot_maf
    String me_dot_list
  }
  command <<<
    mafMeFirst \
      ~{in_dot_maf} \
      ~{me_dot_list}
  >>>
  parameter_meta {
    in_dot_maf: ""
    me_dot_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}