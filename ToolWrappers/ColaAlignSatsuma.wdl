version 1.0

task ColaAlignSatsuma {
  input {
    Boolean? string_query_sequence
  }
  command <<<
    ColaAlignSatsuma \
      ~{if (string_query_sequence) then "-q" else ""}
  >>>
  parameter_meta {
    string_query_sequence: "<string> : query sequence"
  }
  output {
    File out_stdout = stdout()
  }
}