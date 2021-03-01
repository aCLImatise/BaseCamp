version 1.0

task SatsumaSynteny2 {
  input {
    Boolean? string_query_sequence
  }
  command <<<
    SatsumaSynteny2 \
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