version 1.0

task NanorawWriteWiggles {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[String] fast_five_based_irs
    Array[String] fast_five_based_irs_two
    String? corrected_group
    Array[String] obs_per_base_filter
    String? test_type
    String? fishers_method_offset
    Int? minimum_test_reads
    String? statistics_filename
    Boolean? quiet
  }
  command <<<
    nanoraw write_wiggles \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--2d" false="" two_d} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(test_type) then ("--test-type " +  '"' + test_type + '"') else ""} \
      ~{if defined(fishers_method_offset) then ("--fishers-method-offset " +  '"' + fishers_method_offset + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template and/or complement reads are stored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall- subgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    fast_five_based_irs_two: "Second set of directories containing fast5 files to compare."
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of percentiles of the number of observations assigned to a base (default no filter). Format thresholds as \"percentile:thresh [pctl2:thresh2 ...]\" E.g. reads with 99th pctl <200 obs and max <5k obs would be \"99:200 100:5000\"."
    test_type: "Type of significance test to apply. Choices are: mw_utest (default; mann-whitney u-test), ttest."
    fishers_method_offset: "Offset up and downstream over which to compute combined p-values using Fisher's method. Default: 2."
    minimum_test_reads: "Number of reads required from both samples to test for significant difference in signal level. Default: 5"
    statistics_filename: "Filename to save/load base by base signal difference statistics. If file exists it will try to be loaded, if it does not exist it will be created to save statistics. Default: Don't save/load."
    quiet: "Don't print status information."
  }
}