version 1.0

task MakehmmerdbSeqfile {
  input {
    String binary_file
  }
  command <<<
    makehmmerdb seqfile \
      ~{binary_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    binary_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}