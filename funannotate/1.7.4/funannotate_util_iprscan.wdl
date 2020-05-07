version 1.0

task FunannotateUtilIprscan {
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
    String? iprsIprsCan
    String? argumentsArguments
  }
  command <<<
    funannotate util iprscan \
      ~{iprsIprsCan} \
      ~{true="--input" false="" inputInput} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--num" false="" numNum} \
      ~{true="--out" false="" outOut} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{true="--cpus_per_chunk" false="" cpusCpusPerChunk} \
      ~{true="--iprscan_path" false="" iprsIprsCanPath} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{argumentsArguments}
  >>>
}