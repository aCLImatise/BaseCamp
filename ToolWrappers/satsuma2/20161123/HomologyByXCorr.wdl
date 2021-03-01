version 1.0

task HomologyByXCorr {
  input {
    Boolean? string_query_sequence
  }
  command <<<
    HomologyByXCorr \
      ~{if (string_query_sequence) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_query_sequence: "<string> : query fasta sequence"
  }
  output {
    File out_stdout = stdout()
  }
}