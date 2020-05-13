version 1.0

task Rm {
  input {
    Boolean forceForce
    Boolean iI
    Boolean iI
    Boolean interactiveInteractive
    Boolean oneOneFileSystem
    Boolean noNoPreserveRoot
    Boolean preservePreserveRoot
    Boolean recursiveRecursive
    Boolean dirDir
    Boolean verboseVerbose
  }
  command <<<
    rm \
      ~{true="--force" false="" forceForce} \
      ~{true="-i" false="" iI} \
      ~{true="-I" false="" iI} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{true="--one-file-system" false="" oneOneFileSystem} \
      ~{true="--no-preserve-root" false="" noNoPreserveRoot} \
      ~{true="--preserve-root" false="" preservePreserveRoot} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--dir" false="" dirDir} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}