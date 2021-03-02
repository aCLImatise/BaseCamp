version 1.0

task NovoutilAddns {
  input {
    Boolean? number_ns_add
    String fast_a_files
  }
  command <<<
    novoutil addns \
      ~{fast_a_files} \
      ~{if (number_ns_add) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_ns_add: "99      Number of Ns to add. default 50."
    fast_a_files: "is one or more fasta files to be processed.\\nInput files may be compressed with gzip or bzip."
  }
  output {
    File out_stdout = stdout()
  }
}