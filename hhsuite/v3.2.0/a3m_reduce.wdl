version 1.0

task A3mReduce {
  input {
    Boolean? i
    Boolean? o
    Boolean? d
    String? input_file_vertical_line_stdin
    String? output_file_vertical_line_stdout
    String? ff_index_sequence_database_prefix
  }
  command <<<
    a3m_reduce \
      ~{input_file_vertical_line_stdin} \
      ~{output_file_vertical_line_stdout} \
      ~{ff_index_sequence_database_prefix} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    i: ""
    o: ""
    d: ""
    input_file_vertical_line_stdin: ""
    output_file_vertical_line_stdout: ""
    ff_index_sequence_database_prefix: ""
  }
}