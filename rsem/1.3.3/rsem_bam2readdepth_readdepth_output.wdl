version 1.0

task RsemBam2readdepthReaddepthOutput {
  input {
    String? sortedSortedBamInput
    String? readReadDepthOutput
  }
  command <<<
    rsem-bam2readdepth readdepth_output \
      ~{sortedSortedBamInput} \
      ~{readReadDepthOutput}
  >>>
}