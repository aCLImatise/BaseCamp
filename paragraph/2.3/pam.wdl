version 1.0

task Pam {
  input {
    Boolean bB
    Boolean gG
    Boolean oO
    Boolean tT
    String outputOutputNodeCoverage
    Boolean aA
    Boolean aA
    Boolean eE
    Boolean mM
    Boolean rR
    String logLogLevel
    String logLogFile
    String logLogAsync
  }
  command <<<
    pam \
      ~{true="-b" false="" bB} \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-T" false="" tT} \
      ~{if defined(outputOutputNodeCoverage) then ("--output-node-coverage " +  '"' + outputOutputNodeCoverage + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-A" false="" aA} \
      ~{true="-E" false="" eE} \
      ~{true="-M" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogAsync) then ("--log-async " +  '"' + logLogAsync + '"') else ""}
  >>>
}