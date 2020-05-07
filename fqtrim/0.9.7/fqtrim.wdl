version 1.0

task Fqtrim {
  input {
    Boolean aA
    Boolean pid5Pid5
    Boolean pid3Pid3
    Boolean mismMism
    String matchMatch
    Boolean rR
  }
  command <<<
    fqtrim \
      ~{true="-a" false="" aA} \
      ~{true="--pid5" false="" pid5Pid5} \
      ~{true="--pid3" false="" pid3Pid3} \
      ~{true="--mism" false="" mismMism} \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{true="-R" false="" rR}
  >>>
}