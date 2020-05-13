version 1.0

task PIRATE {
  input {
    Boolean errorError
    Boolean threadsThreads
    Boolean quietQuiet
    Boolean zZ
    Boolean checkCheck
  }
  command <<<
    PIRATE \
      ~{true="- ERROR" false="" errorError} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="-z" false="" zZ} \
      ~{true="--check" false="" checkCheck}
  >>>
}