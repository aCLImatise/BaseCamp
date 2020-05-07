version 1.0

task KallistoIndex {
  input {
    Boolean makeMakeUnique
    String? argumentsArguments
    String? fastFastAFiles
  }
  command <<<
    kallisto index \
      ~{argumentsArguments} \
      ~{true="--make-unique" false="" makeMakeUnique} \
      ~{fastFastAFiles}
  >>>
}