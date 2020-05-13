version 1.0

task MegahitCoreNoHwAccelIterate {
  input {
    String contigContigFile
    String bubbleBubbleFile
    String readReadFile
    String numNumCpuThreads
    String kmKmErK
    String stepStep
    String outputOutputPrefix
    String? iterateIterate
    String? optOpt
  }
  command <<<
    megahit_core_no_hw_accel iterate \
      ~{iterateIterate} \
      ~{if defined(contigContigFile) then ("--contig_file " +  '"' + contigContigFile + '"') else ""} \
      ~{if defined(bubbleBubbleFile) then ("--bubble_file " +  '"' + bubbleBubbleFile + '"') else ""} \
      ~{if defined(readReadFile) then ("--read_file " +  '"' + readReadFile + '"') else ""} \
      ~{if defined(numNumCpuThreads) then ("--num_cpu_threads " +  '"' + numNumCpuThreads + '"') else ""} \
      ~{if defined(kmKmErK) then ("--kmer_k " +  '"' + kmKmErK + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{optOpt}
  >>>
}