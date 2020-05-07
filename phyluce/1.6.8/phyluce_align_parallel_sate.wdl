version 1.0

task PhyluceAlignParallelSate {
  input {
    String sateSateConf
    String inputInput
    String outputOutput
    String sateSateConf
    String coresCores
  }
  command <<<
    phyluce_align_parallel_sate \
      ~{if defined(sateSateConf) then ("--sate-conf " +  '"' + sateSateConf + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sateSateConf) then ("--sate-conf " +  '"' + sateSateConf + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}