version 1.0

task MakehmmerdbBinaryfile {
  input {
    String make_hmmer_db
    String seq_file
    String binary_file
  }
  command <<<
    makehmmerdb binaryfile \
      ~{make_hmmer_db} \
      ~{seq_file} \
      ~{binary_file}
  >>>
  parameter_meta {
    make_hmmer_db: ""
    seq_file: ""
    binary_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}