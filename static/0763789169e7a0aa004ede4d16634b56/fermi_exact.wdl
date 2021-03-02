version 1.0

task FermiExact {
  input {
    Boolean? ms
    String idx_based_ot_bwt
    String src_dot_fa
  }
  command <<<
    fermi exact \
      ~{idx_based_ot_bwt} \
      ~{src_dot_fa} \
      ~{if (ms) then "-Ms" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ms: ""
    idx_based_ot_bwt: ""
    src_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}