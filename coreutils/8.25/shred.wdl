version 1.0

task Shred {
  input {
    Boolean forceForce
    String iterationsIterations
    File randomRandomSource
    String sizeSize
    Boolean uU
    Boolean removeRemove
    Boolean verboseVerbose
    Boolean exactExact
    Boolean zeroZero
  }
  command <<<
    shred \
      ~{true="--force" false="" forceForce} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(randomRandomSource) then ("--random-source " +  '"' + randomRandomSource + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--exact" false="" exactExact} \
      ~{true="--zero" false="" zeroZero}
  >>>
}