version 1.0

task AquilaStep0Sortbam {
  input {
    String bamBamFile
    String outOutDir
    String numNumThreadsForSamToolsSort
  }
  command <<<
    Aquila_step0_sortbam \
      ~{if defined(bamBamFile) then ("--bam_file " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(numNumThreadsForSamToolsSort) then ("--num_threads_for_samtools_sort " +  '"' + numNumThreadsForSamToolsSort + '"') else ""}
  >>>
}