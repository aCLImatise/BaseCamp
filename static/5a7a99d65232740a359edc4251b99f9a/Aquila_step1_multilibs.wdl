version 1.0

task AquilaStep1Multilibs {
  input {
    String bamBamFileList
    String vcfVcfFileList
    String chrChrStart
    String chrChrEnd
    String sampleSampleNameList
    String outOutDir
    String uniqUniqMapDir
    String numNumThreads
    String numNumThreadsForSamToolsSort
    String blockBlockThreshold
    String blockBlockLenUse
  }
  command <<<
    Aquila_step1_multilibs \
      ~{if defined(bamBamFileList) then ("--bam_file_list " +  '"' + bamBamFileList + '"') else ""} \
      ~{if defined(vcfVcfFileList) then ("--vcf_file_list " +  '"' + vcfVcfFileList + '"') else ""} \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(sampleSampleNameList) then ("--sample_name_list " +  '"' + sampleSampleNameList + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(uniqUniqMapDir) then ("--uniq_map_dir " +  '"' + uniqUniqMapDir + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(numNumThreadsForSamToolsSort) then ("--num_threads_for_samtools_sort " +  '"' + numNumThreadsForSamToolsSort + '"') else ""} \
      ~{if defined(blockBlockThreshold) then ("--block_threshold " +  '"' + blockBlockThreshold + '"') else ""} \
      ~{if defined(blockBlockLenUse) then ("--block_len_use " +  '"' + blockBlockLenUse + '"') else ""}
  >>>
}