version 1.0

task NanorawPlotMotifWithStats {
  input {
    Int? motif
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[Int] fast_five_based_irs
    Array[Int] fast_five_based_irs_two
    Int? corrected_group
    Int? over_plot_threshold
    String? over_plot_type
    Array[String] obs_per_base_filter
    String? test_type
    Int? fishers_method_offset
    Int? minimum_test_reads
    File? pdf_filename
    File? statistics_filename
    Int? num_regions
    Int? num_context
    Int? num_statistics
    Boolean? quiet
  }
  command <<<
    nanoraw plot_motif_with_stats \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (two_d) then "--2d" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(over_plot_type) then ("--overplot-type " +  '"' + over_plot_type + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(test_type) then ("--test-type " +  '"' + test_type + '"') else ""} \
      ~{if defined(fishers_method_offset) then ("--fishers-method-offset " +  '"' + fishers_method_offset + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_context) then ("--num-context " +  '"' + num_context + '"') else ""} \
      ~{if defined(num_statistics) then ("--num-statistics " +  '"' + num_statistics + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    motif: "[--corrected-group CORRECTED_GROUP]\\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS ...]\\n| --2d]\\n[--overplot-threshold OVERPLOT_THRESHOLD]\\n[--overplot-type {Downsample,Boxplot,Quantile,Violin}]\\n[--obs-per-base-filter OBS_PER_BASE_FILTER [OBS_PER_BASE_FILTER ...]]\\n[--test-type {mw_utest,ttest}]\\n[--fishers-method-offset FISHERS_METHOD_OFFSET]\\n[--minimum-test-reads MINIMUM_TEST_READS]\\n[--pdf-filename PDF_FILENAME]\\n[--statistics-filename STATISTICS_FILENAME]\\n[--num-regions NUM_REGIONS]\\n[--num-context NUM_CONTEXT]\\n[--num-statistics NUM_STATISTICS]\\n[--quiet] [--help]"
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template and/or complement reads are\\nstored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall-\\nsubgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    fast_five_based_irs_two: "Second set of directories containing fast5 files to\\ncompare."
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    over_plot_threshold: "Number of reads to trigger alternative plot type\\ninstead of raw signal due to overplotting. Default: 50"
    over_plot_type: "Plot type for regions with higher coverage. Choices:\\nDownsample (default), Boxplot , Quantile, Violin"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of\\npercentiles of the number of observations assigned to\\na base (default no filter). Format thresholds as\\n\\\"percentile:thresh [pctl2:thresh2 ...]\\\" E.g. reads\\nwith 99th pctl <200 obs and max <5k obs would be\\n\\\"99:200 100:5000\\\"."
    test_type: "Type of significance test to apply. Choices are:\\nmw_utest (default; mann-whitney u-test), ttest."
    fishers_method_offset: "Offset up and downstream over which to compute\\ncombined p-values using Fisher's method. Default: 2."
    minimum_test_reads: "Number of reads required from both samples to test for\\nsignificant difference in signal level. Default: 5"
    pdf_filename: "PDF filename to store plot(s). Default:\\nNanopore_read_coverage.statistics_around_motif.pdf"
    statistics_filename: "Filename to save/load base by base signal difference\\nstatistics. If file exists it will try to be loaded,\\nif it does not exist it will be created to save\\nstatistics. Default: Don't save/load."
    num_regions: "Number of regions to plot. Default: 5"
    num_context: "Number of bases surrounding motif of interest.\\nDefault: 2"
    num_statistics: "Number of regions at which to accumulate statistics\\nfor distribution plots. Default: 200"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}