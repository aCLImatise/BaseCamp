version 1.0

task A3mDatabaseExtract {
  input {
    Boolean? q
    Boolean? d
    Boolean? o
    Boolean? i
    Int? ff_index_ca_three_m_database_prefix
    Int? ff_index_a_three_m_database_prefix
    String? ff_index_sequence_database_prefix
    String? ff_index_header_database_prefix
  }
  command <<<
    a3m_database_extract \
      ~{ff_index_ca_three_m_database_prefix} \
      ~{ff_index_a_three_m_database_prefix} \
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
    ff_index_ca_three_m_database_prefix: ""
    ff_index_a_three_m_database_prefix: ""
    ff_index_sequence_database_prefix: ""
    ff_index_header_database_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}