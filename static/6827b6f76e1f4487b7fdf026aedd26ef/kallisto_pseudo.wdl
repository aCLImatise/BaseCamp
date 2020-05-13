version 1.0

task KallistoPseudo {
  input {
    Boolean quantQuant
    Boolean singleSingle
    String? argumentsArguments
    String? fastFastQFiles
  }
  command <<<
    kallisto pseudo \
      ~{argumentsArguments} \
      ~{true="--quant" false="" quantQuant} \
      ~{true="--single" false="" singleSingle} \
      ~{fastFastQFiles}
  >>>
}