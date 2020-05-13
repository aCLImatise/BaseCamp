version 1.0

task MegahitCoreNoHwAccelRead2sdbg {
  input {
    String kmKmErK
    String minMinKmErFrequency
    String hostHostMem
    String numNumCpuThreads
    String readReadLibFile
    String outputOutputPrefix
    String memMemFlag
    Boolean needNeedMercy
    String? sSDbgBuilder
    String? readRead2sdbg
  }
  command <<<
    megahit_core_no_hw_accel read2sdbg \
      ~{sSDbgBuilder} \
      ~{if defined(kmKmErK) then ("--kmer_k " +  '"' + kmKmErK + '"') else ""} \
      ~{if defined(minMinKmErFrequency) then ("--min_kmer_frequency " +  '"' + minMinKmErFrequency + '"') else ""} \
      ~{if defined(hostHostMem) then ("--host_mem " +  '"' + hostHostMem + '"') else ""} \
      ~{if defined(numNumCpuThreads) then ("--num_cpu_threads " +  '"' + numNumCpuThreads + '"') else ""} \
      ~{if defined(readReadLibFile) then ("--read_lib_file " +  '"' + readReadLibFile + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(memMemFlag) then ("--mem_flag " +  '"' + memMemFlag + '"') else ""} \
      ~{true="--need_mercy" false="" needNeedMercy} \
      ~{readRead2sdbg}
  >>>
}