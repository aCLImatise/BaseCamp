version 1.0

task AquilaStep0SortbamMultilibs {
  input {
    String bamBamFileList
    String outOutDir
    String sampleSampleNameList
    String numNumThreadsForSamToolsSort
  }
  command <<<
    Aquila_step0_sortbam_multilibs \
      ~{if defined(bamBamFileList) then ("--bam_file_list " +  '"' + bamBamFileList + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(sampleSampleNameList) then ("--sample_name_list " +  '"' + sampleSampleNameList + '"') else ""} \
      ~{if defined(numNumThreadsForSamToolsSort) then ("--num_threads_for_samtools_sort " +  '"' + numNumThreadsForSamToolsSort + '"') else ""}
  >>>
}