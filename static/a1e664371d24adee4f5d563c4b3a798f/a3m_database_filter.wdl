version 1.0

task A3mDatabaseFilter {
  input {
    Boolean iI
    Boolean oO
    Boolean sS
    String? ffFfIndexA3mDatabasePrefix
    String? ffFfIndexA3mDatabasePrefix
    String? filterFilter
  }
  command <<<
    a3m_database_filter \
      ~{ffFfIndexA3mDatabasePrefix} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{ffFfIndexA3mDatabasePrefix} \
      ~{filterFilter}
  >>>
}