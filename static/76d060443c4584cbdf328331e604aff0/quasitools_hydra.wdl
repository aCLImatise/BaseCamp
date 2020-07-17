version 1.0

task QuasitoolsHydra {
  input {
    Boolean? generate_consensus
    Int? consensus_pct
    Boolean? quiet
    Boolean? trim_reads
    Boolean? mask_reads
    Int? min_read_qual
    Int? length_cut_off
    Int? score_cut_off
    Boolean? median
    Boolean? ns
    Float? error_rate
    Int? min_variant_qual
    Int? min_dp
    Int? min_ac
    Float? min_freq
    String? id
    String forward
    String? reverse
  }
  command <<<
    quasitools hydra \
      ~{forward} \
      ~{reverse} \
      ~{true="--generate_consensus" false="" generate_consensus} \
      ~{if defined(consensus_pct) then ("--consensus_pct " +  '"' + consensus_pct + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--trim_reads" false="" trim_reads} \
      ~{true="--mask_reads" false="" mask_reads} \
      ~{if defined(min_read_qual) then ("--min_read_qual " +  '"' + min_read_qual + '"') else ""} \
      ~{if defined(length_cut_off) then ("--length_cutoff " +  '"' + length_cut_off + '"') else ""} \
      ~{if defined(score_cut_off) then ("--score_cutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{true="--median" false="" median} \
      ~{true="--ns" false="" ns} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(min_variant_qual) then ("--min_variant_qual " +  '"' + min_variant_qual + '"') else ""} \
      ~{if defined(min_dp) then ("--min_dp " +  '"' + min_dp + '"') else ""} \
      ~{if defined(min_ac) then ("--min_ac " +  '"' + min_ac + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  parameter_meta {
    generate_consensus: "Generate a mixed base consensus sequence."
    consensus_pct: "RANGE Minimum percentage a base needs to be incorporated into the consensus sequence."
    quiet: "Suppress all normal output."
    trim_reads: "Iteratively trim reads based on filter values if enabled. Remove reads which do not meet filter values if disabled."
    mask_reads: "Mask low coverage regions in reads if below minimum read quality. This option and --ns cannot be both enabled simultaneously."
    min_read_qual: "Minimum quality for a position in a read to be masked."
    length_cut_off: "Reads which fall short of the specified length will be filtered out."
    score_cut_off: "Reads that have a median or mean quality score (depending on the score type specified) less than the score cutoff value will be filtered out."
    median: "/ -mn, --mean     Use either median score (default) or mean score for the score cutoff value."
    ns: "Flag to enable the filtering of n's.  This option and --mask_reads cannot be both enabled simultaneously."
    error_rate: "Error rate for the sequencing platform."
    min_variant_qual: "Minimum quality for variant to be considered later on in the pipeline."
    min_dp: "Minimum required read depth for variant to be considered later on in the pipeline."
    min_ac: "The minimum required allele count for variant to be considered later on in the pipeline."
    min_freq: "The minimum required frequency for mutation to be considered in drug resistance report."
    id: "Specify FASTA sequence identifier to be used in the consensus report."
    forward: ""
    reverse: ""
  }
}