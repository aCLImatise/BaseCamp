version 1.0

task AquilaStep1 {
  input {
    String bamBamFile
    String vcfVcfFile
    String chrChrStart
    String chrChrEnd
    String sampleSampleName
    String outOutDir
    String uniqUniqMapDir
    String numNumThreads
    String numNumThreadsForSamToolsSort
    String numNumThreadsForExtractReads
    String blockBlockThreshold
    String blockBlockLenUse
    String mbqMbqThreshold
    String boundaryBoundary
  }
  command <<<
    Aquila_step1 \
      ~{if defined(bamBamFile) then ("--bam_file " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(vcfVcfFile) then ("--vcf_file " +  '"' + vcfVcfFile + '"') else ""} \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample_name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(uniqUniqMapDir) then ("--uniq_map_dir " +  '"' + uniqUniqMapDir + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(numNumThreadsForSamToolsSort) then ("--num_threads_for_samtools_sort " +  '"' + numNumThreadsForSamToolsSort + '"') else ""} \
      ~{if defined(numNumThreadsForExtractReads) then ("--num_threads_for_extract_reads " +  '"' + numNumThreadsForExtractReads + '"') else ""} \
      ~{if defined(blockBlockThreshold) then ("--block_threshold " +  '"' + blockBlockThreshold + '"') else ""} \
      ~{if defined(blockBlockLenUse) then ("--block_len_use " +  '"' + blockBlockLenUse + '"') else ""} \
      ~{if defined(mbqMbqThreshold) then ("--mbq_threshold " +  '"' + mbqMbqThreshold + '"') else ""} \
      ~{if defined(boundaryBoundary) then ("--boundary " +  '"' + boundaryBoundary + '"') else ""}
  >>>
}