version 1.0

task Vcfcheck {
  input {
    String inputInputFile
    Boolean oO
    Boolean lL
    String limitLimitRecords
    String messageMessageEvery
    Boolean fF
    Boolean hH
    String checkCheckBcfErrors
    Boolean wW
  }
  command <<<
    vcfcheck \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-l" false="" lL} \
      ~{if defined(limitLimitRecords) then ("--limit-records " +  '"' + limitLimitRecords + '"') else ""} \
      ~{if defined(messageMessageEvery) then ("--message-every " +  '"' + messageMessageEvery + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-H" false="" hH} \
      ~{if defined(checkCheckBcfErrors) then ("--check-bcf-errors " +  '"' + checkCheckBcfErrors + '"') else ""} \
      ~{true="-W" false="" wW}
  >>>
}