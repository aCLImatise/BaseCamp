version 1.0

task KrocusInputFastq {
  input {
    String kroc_us
    String allele_directory
    String input_dot_fast_q
  }
  command <<<
    krocus input_fastq \
      ~{kroc_us} \
      ~{allele_directory} \
      ~{input_dot_fast_q}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kroc_us: ""
    allele_directory: ""
    input_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}