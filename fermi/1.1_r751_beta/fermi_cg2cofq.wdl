version 1.0

task FermiCg2cofq {
  input {
    String in_do_tcg_fq
  }
  command <<<
    fermi cg2cofq \
      ~{in_do_tcg_fq}
  >>>
  parameter_meta {
    in_do_tcg_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}