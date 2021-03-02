version 1.0

task A3mExtract {
  input {
    Boolean? q
    Boolean? d
    Boolean? o
    Boolean? i
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
      ~{if (q) then "-q" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    q: ""
    d: ""
    o: ""
    i: ""
    input_file_vertical_line_stdin: ""
    output_file_vertical_line_stdout: ""
    ff_index_sequence_database_prefix: ""
    ff_index_header_database_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}