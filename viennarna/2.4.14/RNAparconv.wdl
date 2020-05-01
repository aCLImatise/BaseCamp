version 1.0

task RNAparconv {
  input {
    Boolean fullFullHelp
    File outputOutput
    File inputInput
    Boolean vanillaVanilla
    Boolean dumpDump
    Boolean silentSilent
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    RNAparconv \
      ~{inputInputFile} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--vanilla" false="" vanillaVanilla} \
      ~{true="--dump" false="" dumpDump} \
      ~{true="--silent" false="" silentSilent} \
      ~{outputOutputFile}
  >>>
}