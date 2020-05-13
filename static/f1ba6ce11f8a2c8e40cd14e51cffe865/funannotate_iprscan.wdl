version 1.0

task FunannotateIprscan {
  input {
    Boolean inputInput
    Boolean methodMethod
    Boolean numNum
    Boolean outOut
    Boolean debugDebug
    Boolean cpusCpus
    Boolean cpusCpusPerChunk
    Boolean iprsIprsCanPath
    Boolean cpusCpus
    String? argumentsArguments
  }
  command <<<
    funannotate iprscan \
      ~{argumentsArguments} \
      ~{true="--input" false="" inputInput} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--num" false="" numNum} \
      ~{true="--out" false="" outOut} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{true="--cpus_per_chunk" false="" cpusCpusPerChunk} \
      ~{true="--iprscan_path" false="" iprsIprsCanPath} \
      ~{true="--cpus" false="" cpusCpus}
  >>>
}