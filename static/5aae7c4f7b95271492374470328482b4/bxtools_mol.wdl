version 1.0

task BxtoolsMol {
  input {
    Boolean verboseVerbose
  }
  command <<<
    bxtools mol \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}