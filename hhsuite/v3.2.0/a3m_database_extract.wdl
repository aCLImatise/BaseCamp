version 1.0

task A3mDatabaseExtract {
  input {
    Boolean? i
    Boolean? o
    Boolean? d
    Boolean? q
    String? ff_index_ca_three_m_database_prefix
    String? ff_index_a_three_m_database_prefix
    String? ff_index_sequence_database_prefix
    String? ff_index_header_database_prefix
  }
  command <<<
    a3m_database_extract \
      ~{ff_index_ca_three_m_database_prefix} \
      ~{ff_index_a_three_m_database_prefix} \
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
    ff_index_ca_three_m_database_prefix: ""
    ff_index_a_three_m_database_prefix: ""
    ff_index_sequence_database_prefix: ""
    ff_index_header_database_prefix: ""
  }
}