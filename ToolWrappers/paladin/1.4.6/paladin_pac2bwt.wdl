version 1.0

task PaladinPac2bwt {
  input {
    String in_dot_pac
    String out_dot_bwt
  }
  command <<<
    paladin pac2bwt \
      ~{in_dot_pac} \
      ~{out_dot_bwt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_pac: ""
    out_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}