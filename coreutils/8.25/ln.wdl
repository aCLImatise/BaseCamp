version 1.0

task Ln {
  input {
    Boolean noNoTargetDirectory
    Boolean verboseVerbose
  }
  command <<<
    ln \
      ~{true="--no-target-directory" false="" noNoTargetDirectory} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}