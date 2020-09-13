version 1.0

task MergeXCorrMatches {
  input {
    Boolean? string_query_sequence
  }
  command <<<
    MergeXCorrMatches \
      ~{if (string_query_sequence) then "-q" else ""}
  >>>
  parameter_meta {
    string_query_sequence: "<string> : query fasta sequence"
  }
  output {
    File out_stdout = stdout()
  }
}