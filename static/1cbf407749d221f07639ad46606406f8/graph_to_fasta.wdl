version 1.0

task GraphToFasta {
  input {
    Boolean gG
    Boolean oO
    Boolean oO
    Boolean rR
    String logLogLevel
    String logLogFile
    String logLogAsync
  }
  command <<<
    graph-to-fasta \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-O" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogAsync) then ("--log-async " +  '"' + logLogAsync + '"') else ""}
  >>>
}