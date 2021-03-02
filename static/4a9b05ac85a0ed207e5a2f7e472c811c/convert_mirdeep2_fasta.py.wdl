version 1.0

task Convertmirdeep2fastapy {
  input {
    String fast_an
  }
  command <<<
    convert_mirdeep2_fasta_py \
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