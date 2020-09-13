version 1.0

task NovoutilFastaAddM5 {
  input {
    String in
  }
  command <<<
    novoutil fastaAddM5 \
      ~{in}
  >>>
  parameter_meta {
    in: "is the fasta files to be processed.\\nInput files may be compressed with gzip or bzip."
  }
  output {
    File out_stdout = stdout()
  }
}