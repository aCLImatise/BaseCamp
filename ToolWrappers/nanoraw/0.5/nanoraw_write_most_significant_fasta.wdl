version 1.0

task NanorawWriteMostSignificantFasta {
  input {
    Array[Int] fast_five_based_irs_two
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[Int] fast_five_based_irs
    Int? corrected_group
    Array[String] obs_per_base_filter
    String? test_type
    Int? fishers_method_offset
    Int? minimum_test_reads
    File? genome_fast_a
    File? sequences_filename
    File? statistics_filename
    Int? num_regions
    Int? q_value_threshold
    Int? num_bases
    Boolean? quiet
  }
  command <<<
    nanoraw write_most_significant_fasta \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (two_d) then "--2d" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(test_type) then ("--test-type " +  '"' + test_type + '"') else ""} \
      ~{if defined(fishers_method_offset) then ("--fishers-method-offset " +  '"' + fishers_method_offset + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(sequences_filename) then ("--sequences-filename " +  '"' + sequences_filename + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(q_value_threshold) then ("--q-value-threshold " +  '"' + q_value_threshold + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    fast_five_based_irs_two: "[--corrected-group CORRECTED_GROUP]\\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS ...]\\n| --2d]\\n[--obs-per-base-filter OBS_PER_BASE_FILTER [OBS_PER_BASE_FILTER ...]]\\n[--test-type {mw_utest,ttest}]\\n[--fishers-method-offset FISHERS_METHOD_OFFSET]\\n[--minimum-test-reads MINIMUM_TEST_READS]\\n[--genome-fasta GENOME_FASTA]\\n[--sequences-filename SEQUENCES_FILENAME]\\n[--statistics-filename STATISTICS_FILENAME]\\n[--num-regions NUM_REGIONS]\\n[--q-value-threshold Q_VALUE_THRESHOLD]\\n[--num-bases NUM_BASES] [--quiet]\\n[--help]"
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template and/or complement reads are\\nstored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall-\\nsubgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of\\npercentiles of the number of observations assigned to\\na base (default no filter). Format thresholds as\\n\\\"percentile:thresh [pctl2:thresh2 ...]\\\" E.g. reads\\nwith 99th pctl <200 obs and max <5k obs would be\\n\\\"99:200 100:5000\\\"."
    test_type: "Type of significance test to apply. Choices are:\\nmw_utest (default; mann-whitney u-test), ttest."
    fishers_method_offset: "Offset up and downstream over which to compute\\ncombined p-values using Fisher's method. Default: 2."
    minimum_test_reads: "Number of reads required from both samples to test for\\nsignificant difference in signal level. Default: 5"
    genome_fast_a: "FASTA file used to map reads with \\\"genome_resquiggle\\\"\\ncommand."
    sequences_filename: "Filename to store sequences for selected regions (e.g.\\nfor PWM search). Sequences will be stored in FASTA\\nformat. Default:\\nNanopore_most_significant_regions.fasta."
    statistics_filename: "Filename to save/load base by base signal difference\\nstatistics. If file exists it will try to be loaded,\\nif it does not exist it will be created to save\\nstatistics. Default: Don't save/load."
    num_regions: "Number of regions to plot. Default: 10"
    q_value_threshold: "Choose the number of regions to select by the FDR\\ncorrected p-values. Note that --num-regions will be\\nignored if this option is set."
    num_bases: "Number of bases to plot from region. Default: 51"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}