version 1.0

task A3mDatabaseFilter {
  input {
    Boolean? s
    Boolean? o
    Boolean? i
    Int? ff_index_a_three_m_database_prefix
    String? filter
  }
  command <<<
    a3m_database_filter \
      ~{ff_index_a_three_m_database_prefix} \
      ~{filter} \
      ~{if (s) then "-s" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
  }
  parameter_meta {
    s: ""
    o: ""
    i: ""
    ff_index_a_three_m_database_prefix: ""
    filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}