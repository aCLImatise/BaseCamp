version 1.0

task MakehmmerdbSeqfile {
  input {
    String binary_file
  }
  command <<<
    makehmmerdb seqfile \
      ~{binary_file}
  >>>
  parameter_meta {
    binary_file: ""
  }
}