version 1.0

task MikadoSerialise {
  input {
    Boolean lL
    String logLogLevel
    String seedSeed
    String? dbDb
  }
  command <<<
    mikado serialise \
      ~{dbDb} \
      ~{true="-l" false="" lL} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}