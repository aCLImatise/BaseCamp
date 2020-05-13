version 1.0

task A3mDatabaseExtract {
  input {
    Boolean iI
    Boolean oO
    Boolean dD
    Boolean qQ
    String? ffFfIndexCa3mDatabasePrefix
    String? ffFfIndexA3mDatabasePrefix
    String? ffFfIndexSequenceDatabasePrefix
    String? ffFfIndexHeaderDatabasePrefix
  }
  command <<<
    a3m_database_extract \
      ~{ffFfIndexCa3mDatabasePrefix} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{ffFfIndexA3mDatabasePrefix} \
      ~{ffFfIndexSequenceDatabasePrefix} \
      ~{ffFfIndexHeaderDatabasePrefix}
  >>>
}