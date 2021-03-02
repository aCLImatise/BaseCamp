version 1.0

task BwaPac2bwtgen {
  input {
    String bwt_gen
    String in_dot_pac
    String out_dot_bwt
  }
  command <<<
    bwa pac2bwtgen \
      ~{bwt_gen} \
      ~{in_dot_pac} \
      ~{out_dot_bwt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bwt_gen: ""
    in_dot_pac: ""
    out_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}