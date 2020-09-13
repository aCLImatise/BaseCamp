version 1.0

task MafMeFirst {
  input {
    String? xxx
    String in_dot_maf
    String me_dot_list
  }
  command <<<
    mafMeFirst \
      ~{in_dot_maf} \
      ~{me_dot_list} \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
    in_dot_maf: ""
    me_dot_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}