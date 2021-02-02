version 1.0

task KrocusAlleleDirectory {
  input {
    String input_dot_fast_q
  }
  command <<<
    krocus allele_directory \
      ~{input_dot_fast_q}
  >>>
  parameter_meta {
    input_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}