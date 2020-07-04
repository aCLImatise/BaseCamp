version 1.0

task MafMeFirst {
  input {
    String in_dot_maf
    String me_dot_list
    String out_dot_maf
  }
  command <<<
    mafMeFirst \
      ~{in_dot_maf} \
      ~{me_dot_list} \
      ~{out_dot_maf}
  >>>
  parameter_meta {
    in_dot_maf: ""
    me_dot_list: ""
    out_dot_maf: ""
  }
}