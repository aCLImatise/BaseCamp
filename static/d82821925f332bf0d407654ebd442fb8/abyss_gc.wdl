version 1.0

task AbyssGc {
  input {
    Boolean verboseVerbose
  }
  command <<<
    abyss-gc \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}