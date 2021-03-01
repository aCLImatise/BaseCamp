version 1.0

task QuasitoolsHydra {
  input {
    Directory? output_dir
    File? reporting_threshold
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
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(reporting_threshold) then ("--reporting_threshold " +  '"' + reporting_threshold + '"') else ""} \
      ~{if (generate_consensus) then "--generate_consensus" else ""} \
      ~{if defined(consensus_pct) then ("--consensus_pct " +  '"' + consensus_pct + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (trim_reads) then "--trim_reads" else ""} \
      ~{if (mask_reads) then "--mask_reads" else ""} \
      ~{if defined(min_read_qual) then ("--min_read_qual " +  '"' + min_read_qual + '"') else ""} \
      ~{if defined(length_cut_off) then ("--length_cutoff " +  '"' + length_cut_off + '"') else ""} \
      ~{if defined(score_cut_off) then ("--score_cutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{if (median) then "--median" else ""} \
      ~{if (ns) then "--ns" else ""} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(min_variant_qual) then ("--min_variant_qual " +  '"' + min_variant_qual + '"') else ""} \
      ~{if defined(min_dp) then ("--min_dp " +  '"' + min_dp + '"') else ""} \
      ~{if defined(min_ac) then ("--min_ac " +  '"' + min_ac + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "[required]"
    reporting_threshold: "RANGE\\nMinimum mutation frequency percent to\\nreport."
    generate_consensus: "Generate a mixed base consensus sequence."
    consensus_pct: "RANGE\\nMinimum percentage a base needs to be\\nincorporated into the consensus sequence."
    quiet: "Suppress all normal output."
    trim_reads: "Iteratively trim reads based on filter\\nvalues if enabled. Remove reads which do not\\nmeet filter values if disabled."
    mask_reads: "Mask low coverage regions in reads if below\\nminimum read quality. This option and --ns\\ncannot be both enabled simultaneously."
    min_read_qual: "Minimum quality for a position in a read to\\nbe masked."
    length_cut_off: "Reads which fall short of the specified\\nlength will be filtered out."
    score_cut_off: "Reads that have a median or mean quality\\nscore (depending on the score type\\nspecified) less than the score cutoff value\\nwill be filtered out."
    median: "Use either median score (default) or mean\\nscore for the score cutoff value."
    ns: "Flag to enable the filtering of n's.  This\\noption and --mask_reads cannot be both\\nenabled simultaneously."
    error_rate: "Error rate for the sequencing platform."
    min_variant_qual: "Minimum quality for variant to be considered\\nlater on in the pipeline."
    min_dp: "Minimum required read depth for variant to\\nbe considered later on in the pipeline."
    min_ac: "The minimum required allele count for\\nvariant to be considered later on in the\\npipeline."
    min_freq: "The minimum required frequency for mutation\\nto be considered in drug resistance report."
    id: "Specify FASTA sequence identifier to be used\\nin the consensus report."
    forward: ""
    reverse: ""
  }
  output {
    File out_stdout = stdout()
  }
}