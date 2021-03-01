version 1.0

task Processreadsfastapy {
  input {
    String fast_an
  }
  command <<<
    process_reads_fasta_py \
      ~{fast_an}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_an: ""
  }
  output {
    File out_stdout = stdout()
  }
}