version 1.0

task AbyssFac {
  input {
    String genomeGenomeSize
    String minMinLength
    String delimiterDelimiter
    Boolean jiraJira
    Boolean mmdMmd
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    Boolean countCountAmBig
    Boolean noNoCountAmBig
    Boolean verboseVerbose
  }
  command <<<
    abyss-fac \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="--jira" false="" jiraJira} \
      ~{true="--mmd" false="" mmdMmd} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{true="--count-ambig" false="" countCountAmBig} \
      ~{true="--no-count-ambig" false="" noNoCountAmBig} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}