version 1.0

task A3mDatabaseFilter {
  input {
    Boolean? i
    Boolean? o
    Boolean? s
    String? var_3
    String? var_4
    String? filter
  }
  command <<<
    a3m_database_filter \
      ~{var_3} \
      ~{var_4} \
      ~{filter} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-s" false="" s}
  >>>
  parameter_meta {
    i: ""
    o: ""
    s: ""
    var_3: ""
    var_4: ""
    filter: ""
  }
}