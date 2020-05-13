version 1.0

task SequenzaUtils {
  input {
    Boolean verboseVerbose
  }
  command <<<
    sequenza-utils \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}