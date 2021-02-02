version 1.0

task TomboEstimateKmerReference {
  input {
    Boolean? tombo_model_filename
    Array[Int] fast_five_based_irs
    Boolean? estimate_mean
    Boolean? km_er_specific_sd
    String? downstream_bases
    Int? minimum_test_reads
    Int? coverage_threshold
    Int? minimum_km_er_observations
    Int? multiprocess_region_size
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String individually_dot
  }
  command <<<
    tombo estimate_kmer_reference \
      ~{individually_dot} \
      ~{if (tombo_model_filename) then "--tombo-model-filename" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if (estimate_mean) then "--estimate-mean" else ""} \
      ~{if (km_er_specific_sd) then "--kmer-specific-sd" else ""} \
      ~{if defined(downstream_bases) then ("--downstream-bases " +  '"' + downstream_bases + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(minimum_km_er_observations) then ("--minimum-kmer-observations " +  '"' + minimum_km_er_observations + '"') else ""} \
      ~{if defined(multiprocess_region_size) then ("--multiprocess-region-size " +  '"' + multiprocess_region_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    tombo_model_filename: "TOMBO_MODEL_FILENAME [--estimate-mean]\\n[--kmer-specific-sd]\\n[--upstream-bases {0,1,2,3,4}]\\n[--downstream-bases {0,1,2,3,4}]\\n[--minimum-test-reads MINIMUM_TEST_READS]\\n[--coverage-threshold COVERAGE_THRESHOLD]\\n[--minimum-kmer-observations MINIMUM_KMER_OBSERVATIONS]\\n[--multiprocess-region-size MULTIPROCESS_REGION_SIZE]\\n[--processes PROCESSES]\\n[--corrected-group CORRECTED_GROUP]\\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS ...]]\\n[--quiet] [--help]"
    fast_five_based_irs: "Directories containing fast5 files."
    estimate_mean: "Use the mean instead of median for model level\\nestimation. Note:This can cause poor fits due to\\noutliers"
    km_er_specific_sd: "Estimate standard deviation for each k-mers"
    downstream_bases: "Downstream bases in k-mer. Default: 2"
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 10"
    coverage_threshold: "Maximum mean coverage per region when estimating k-mer\\nmodel (limits compute time for deep samples). Default:\\n100"
    minimum_km_er_observations: "Number of each k-mer observations required in order to\\nproduce a reference (genomic locations for standard\\nreference and per-read for alternative reference).\\nDefault: 5"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic\\ncomputation. For very deep samples a smaller value is\\nrecommmended in order to control memory consumption.\\nDefault: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
    individually_dot: "--upstream-bases {0,1,2,3,4}"
  }
  output {
    File out_stdout = stdout()
  }
}