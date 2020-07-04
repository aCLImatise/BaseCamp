version 1.0

task QuasitoolsQuality {
  input {
    Directory? output_dir
    Boolean? trim_reads
    Boolean? mask_reads
    Int? min_read_qual
    Int? length_cut_off
    Int? score_cut_off
    Boolean? median
    Boolean? ns
    String forward
    String? reverse
  }
  command <<<
    quasitools quality \
      ~{forward} \
      ~{reverse} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--trim_reads" false="" trim_reads} \
      ~{true="--mask_reads" false="" mask_reads} \
      ~{if defined(min_read_qual) then ("--min_read_qual " +  '"' + min_read_qual + '"') else ""} \
      ~{if defined(length_cut_off) then ("--length_cutoff " +  '"' + length_cut_off + '"') else ""} \
      ~{if defined(score_cut_off) then ("--score_cutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{true="--median" false="" median} \
      ~{true="--ns" false="" ns}
  >>>
  parameter_meta {
    output_dir: "[required]"
    trim_reads: "Iteratively trim reads based on filter values if enabled. Remove reads which do not meet filter values if disabled."
    mask_reads: "Mask low quality regions in reads if below minimum read quality. This option and --ns cannot be both enabled simultaneously."
    min_read_qual: "Minimum quality for positions in read if masking is enabled."
    length_cut_off: "Reads which fall short of the specified length will be filtered out."
    score_cut_off: "Reads that have a median or mean quality score (depending on the score type specified) less than the score cutoff value will be filtered out."
    median: "/ -mn, --mean   Use either median score (default) or mean score for the score cutoff value."
    ns: "Flag to enable the filtering of n's. This option and --mask_reads cannot be both enabled simultaneously."
    forward: ""
    reverse: ""
  }
}