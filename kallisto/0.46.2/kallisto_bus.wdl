version 1.0

task KallistoBus {
  input {
    Boolean verboseVerbose
    String? argumentsArguments
    String? fastFastQFiles
  }
  command <<<
    kallisto bus \
      ~{argumentsArguments} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{fastFastQFiles}
  >>>
}