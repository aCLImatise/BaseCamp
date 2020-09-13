version 1.0

task A3mReduce {
  input {
    Boolean? d
    Boolean? o
    Boolean? i
    String? input_file_vertical_line_stdin
    String? output_file_vertical_line_stdout
    String? ff_index_sequence_database_prefix
  }
  command <<<
    a3m_reduce \
      ~{input_file_vertical_line_stdin} \
      ~{output_file_vertical_line_stdout} \
      ~{ff_index_sequence_database_prefix} \
      ~{if (d) then "-d" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  parameter_meta {
    d: ""
    o: ""
    i: ""
    input_file_vertical_line_stdin: ""
    output_file_vertical_line_stdout: ""
    ff_index_sequence_database_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}