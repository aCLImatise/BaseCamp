version 1.0

task Oligotag {
  input {
    Boolean debugDebug
    Boolean withoutWithoutProgressBar
    File oligoOligoList
    Boolean sS
    Boolean fF
    Boolean dD
    Boolean gG
    String acceptedAccepted
    String rejectedRejected
    Boolean pP
    Boolean pP
    String timeoutTimeout
  }
  command <<<
    oligotag \
      ~{true="--DEBUG" false="" debugDebug} \
      ~{true="--without-progress-bar" false="" withoutWithoutProgressBar} \
      ~{if defined(oligoOligoList) then ("--oligo-list " +  '"' + oligoOligoList + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-d" false="" dD} \
      ~{true="-g" false="" gG} \
      ~{if defined(acceptedAccepted) then ("--accepted " +  '"' + acceptedAccepted + '"') else ""} \
      ~{if defined(rejectedRejected) then ("--rejected " +  '"' + rejectedRejected + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""}
  >>>
}