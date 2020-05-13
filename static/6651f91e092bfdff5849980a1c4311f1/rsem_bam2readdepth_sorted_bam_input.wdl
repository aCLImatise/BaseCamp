version 1.0

task RsemBam2readdepthSortedBamInput {
  input {
    String? readReadDepthOutput
  }
  command <<<
    rsem-bam2readdepth sorted_bam_input \
      ~{readReadDepthOutput}
  >>>
}