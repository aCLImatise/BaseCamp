version 1.0

task Fermi2Interleave {
  input {
    String fermi
    String interleave
    Int in_one_dot_fq
    Int in_two_dot_fq
  }
  command <<<
    fermi2 interleave \
      ~{fermi} \
      ~{interleave} \
      ~{in_one_dot_fq} \
      ~{in_two_dot_fq}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fermi: ""
    interleave: ""
    in_one_dot_fq: ""
    in_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}