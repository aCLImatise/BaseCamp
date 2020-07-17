version 1.0

task TomboBuildModelEstimateReference {
  input {
    Array[String] fast_five_based_irs
    String? tombo_model_filename
    Boolean? estimate_mean
    Boolean? km_er_specific_sd
    String? upstream_bases
    String? downstream_bases
    Int? minimum_test_reads
    String? coverage_threshold
    Int? minimum_km_er_observations
    String? multiprocess_region_size
    String? processes
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo build_model estimate_reference \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{true="--estimate-mean" false="" estimate_mean} \
      ~{true="--kmer-specific-sd" false="" km_er_specific_sd} \
      ~{if defined(upstream_bases) then ("--upstream-bases " +  '"' + upstream_bases + '"') else ""} \
      ~{if defined(downstream_bases) then ("--downstream-bases " +  '"' + downstream_bases + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(minimum_km_er_observations) then ("--minimum-kmer-observations " +  '"' + minimum_km_er_observations + '"') else ""} \
      ~{if defined(multiprocess_region_size) then ("--multiprocess-region-size " +  '"' + multiprocess_region_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    tombo_model_filename: "Filename to save Tombo model."
    estimate_mean: "Use the mean instead of median for model level estimation. Note: This can cause poor fits due to outliers"
    km_er_specific_sd: "Estimate standard deviation for each k-mers individually."
    upstream_bases: "Upstream bases in k-mer. Default: 1"
    downstream_bases: "Downstream bases in k-mer. Default: 2"
    minimum_test_reads: "Number of reads required at a position to perform significance testing or contribute to model estimation. Default: 10"
    coverage_threshold: "Maximum mean coverage per region when estimating k-mer model (limits compute time for deep samples). Default: 100"
    minimum_km_er_observations: "Number of each k-mer observations required in order to produce a reference (genomic locations for standard reference and per-read for alternative reference). Default: 5"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic computation. For very deep samples a smaller value is recommmended in order to control memory consumption. Default: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}