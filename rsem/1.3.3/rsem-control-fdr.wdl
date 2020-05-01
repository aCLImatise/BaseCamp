version 1.0

task RsemControlFdr {
  input {
    Boolean hardHardThreshold
    Boolean softSoftThreshold
    String? inputInputFile
    String? fdrFdrRate
    String? outputOutputFile
  }
  command <<<
    rsem-control-fdr \
      ~{inputInputFile} \
      ~{true="--hard-threshold" false="" hardHardThreshold} \
      ~{true="--soft-threshold" false="" softSoftThreshold} \
      ~{fdrFdrRate} \
      ~{outputOutputFile}
  >>>
}