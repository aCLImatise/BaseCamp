version 1.0

task Splitreads {
  input {
    Boolean? arg_length_prefixsuffix
    Boolean? single_end
  }
  command <<<
    split_reads \
      ~{if (arg_length_prefixsuffix) then "-l" else ""} \
      ~{if (single_end) then "--single-end" else ""}
  >>>
  parameter_meta {
    arg_length_prefixsuffix: "[ --split_length ] arg (=35) Length of prefix/suffix to be extracted."
    single_end: "Process single end reads (instead of paired\\nend).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}