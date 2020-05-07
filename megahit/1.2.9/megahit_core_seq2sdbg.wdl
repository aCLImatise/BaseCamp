version 1.0

task MegahitCoreSeq2sdbg {
  input {
    String hostHostMem
    String kmKmErSize
    String kmKmErFrom
    String numNumCpuThreads
    String contigContig
    String bubbleBubble
    String addAddIContig
    String localLocalContig
    String inputInputPrefix
    String outputOutputPrefix
    Boolean needNeedMercy
    String memMemFlag
    String? sSDbgBuilder
    String? seq2sdbgSeq2sdbg
  }
  command <<<
    megahit_core seq2sdbg \
      ~{sSDbgBuilder} \
      ~{if defined(hostHostMem) then ("--host_mem " +  '"' + hostHostMem + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer_size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(kmKmErFrom) then ("--kmer_from " +  '"' + kmKmErFrom + '"') else ""} \
      ~{if defined(numNumCpuThreads) then ("--num_cpu_threads " +  '"' + numNumCpuThreads + '"') else ""} \
      ~{if defined(contigContig) then ("--contig " +  '"' + contigContig + '"') else ""} \
      ~{if defined(bubbleBubble) then ("--bubble " +  '"' + bubbleBubble + '"') else ""} \
      ~{if defined(addAddIContig) then ("--addi_contig " +  '"' + addAddIContig + '"') else ""} \
      ~{if defined(localLocalContig) then ("--local_contig " +  '"' + localLocalContig + '"') else ""} \
      ~{if defined(inputInputPrefix) then ("--input_prefix " +  '"' + inputInputPrefix + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--need_mercy" false="" needNeedMercy} \
      ~{if defined(memMemFlag) then ("--mem_flag " +  '"' + memMemFlag + '"') else ""} \
      ~{seq2sdbgSeq2sdbg}
  >>>
}