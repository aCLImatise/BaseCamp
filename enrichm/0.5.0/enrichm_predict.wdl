version 1.0

task EnrichmPredict {
  input {
    String logLog
    String verbosityVerbosity
    String outputOutput
    Boolean forceForce
    String foresterForesterModelDirectory
    String inputInputMatrix
  }
  command <<<
    enrichm predict \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(foresterForesterModelDirectory) then ("--forester_model_directory " +  '"' + foresterForesterModelDirectory + '"') else ""} \
      ~{if defined(inputInputMatrix) then ("--input_matrix " +  '"' + inputInputMatrix + '"') else ""}
  >>>
}