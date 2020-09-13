version 1.0

task NanorawWriteWiggles {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[Int] fast_five_based_irs
    Array[Int] fast_five_based_irs_two
    Int? wiggle_basename
    String? wiggle_types
    Int? corrected_group
    Array[String] obs_per_base_filter
    String? test_type
    Int? fishers_method_offset
    Int? minimum_test_reads
    File? statistics_filename
    Boolean? quiet
  }
  command <<<
    nanoraw write_wiggles \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (two_d) then "--2d" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(wiggle_basename) then ("--wiggle-basename " +  '"' + wiggle_basename + '"') else ""} \
      ~{if defined(wiggle_types) then ("--wiggle-types " +  '"' + wiggle_types + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(test_type) then ("--test-type " +  '"' + test_type + '"') else ""} \
      ~{if defined(fishers_method_offset) then ("--fishers-method-offset " +  '"' + fishers_method_offset + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template and/or complement reads are\\nstored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall-\\nsubgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    fast_five_based_irs_two: "Second set of directories containing fast5 files to\\ncompare."
    wiggle_basename: "Basename for output files. Two files (plus and minus\\nstrand) will be produced for each --wiggle-types\\nsupplied. Filenames will be formatted as \\\"[wiggle-\\nbasename].[wiggle-type].[group1/2]?.[plus/minus].wig\\\".\\nDefault: Nanopore_data"
    wiggle_types: "[{coverage,signal,signal_sd,length,pvals,qvals,difference} ...]\\nData types for which wiggles should be created (select\\none or more data types). Choices: coverage, signal,\\nsignal_sd, length, pvals, qvals (both negative log10),\\ndifference. Note that signal, signal_sd and length\\n(number of observations per base) are means over all\\nreads at each base. Default: \\\"coverage, pvals\\\""
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of\\npercentiles of the number of observations assigned to\\na base (default no filter). Format thresholds as\\n\\\"percentile:thresh [pctl2:thresh2 ...]\\\" E.g. reads\\nwith 99th pctl <200 obs and max <5k obs would be\\n\\\"99:200 100:5000\\\"."
    test_type: "Type of significance test to apply. Choices are:\\nmw_utest (default; mann-whitney u-test), ttest."
    fishers_method_offset: "Offset up and downstream over which to compute\\ncombined p-values using Fisher's method. Default: 2."
    minimum_test_reads: "Number of reads required from both samples to test for\\nsignificant difference in signal level. Default: 5"
    statistics_filename: "Filename to save/load base by base signal difference\\nstatistics. If file exists it will try to be loaded,\\nif it does not exist it will be created to save\\nstatistics. Default: Don't save/load."
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}