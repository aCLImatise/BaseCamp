version 1.0

task A3mExtract {
  input {
    Boolean? i
    Boolean? o
    Boolean? d
    Boolean? q
    String? input_file_vertical_line_stdin
    String? output_file_vertical_line_stdout
    String? ff_index_sequence_database_prefix
    String? ff_index_header_database_prefix
  }
  command <<<
    a3m_extract \
      ~{input_file_vertical_line_stdin} \
      ~{output_file_vertical_line_stdout} \
      ~{ff_index_sequence_database_prefix} \
      ~{ff_index_header_database_prefix} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-d" false="" d} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    i: ""
    o: ""
    d: ""
    q: ""
    input_file_vertical_line_stdin: ""
    output_file_vertical_line_stdout: ""
    ff_index_sequence_database_prefix: ""
    ff_index_header_database_prefix: ""
  }
}