version 1.0

task OKeepOrRemoveSamplesFromFasta {
  input {
    Boolean retainRetain
    File outputOutput
    String? fastFastAFilePath
    String? samplesSamplesFilePath
  }
  command <<<
    o-keep-or-remove-samples-from-fasta \
      ~{fastFastAFilePath} \
      ~{true="--retain" false="" retainRetain} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{samplesSamplesFilePath}
  >>>
}