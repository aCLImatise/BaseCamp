version 1.0

task NovoutilAddns {
  input {
    Boolean? number_add_default
    String fast_a_files
  }
  command <<<
    novoutil addns \
      ~{fast_a_files} \
      ~{if (number_add_default) then "-n" else ""}
  >>>
  parameter_meta {
    number_add_default: "99      Number of Ns to add. default 50."
    fast_a_files: "is one or more fasta files to be processed.\\nInput files may be compressed with gzip or bzip."
  }
  output {
    File out_stdout = stdout()
  }
}