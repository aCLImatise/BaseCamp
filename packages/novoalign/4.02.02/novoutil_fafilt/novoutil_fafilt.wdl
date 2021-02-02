version 1.0

task NovoutilFafilt {
  input {
    Boolean? length_limit_default
    String fast_a_files
  }
  command <<<
    novoutil fafilt \
      ~{fast_a_files} \
      ~{if (length_limit_default) then "-l" else ""}
  >>>
  parameter_meta {
    length_limit_default: "999     Length limit, default 150."
    fast_a_files: "is one or more fasta files to be processed.\\nInput files may be compressed with gzip or bzip."
  }
  output {
    File out_stdout = stdout()
  }
}