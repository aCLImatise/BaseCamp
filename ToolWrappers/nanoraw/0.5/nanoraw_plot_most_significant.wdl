version 1.0

task NanorawPlotMostSignificant {
  input {
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
    Int? q_value_threshold
    File? sequences_filename
    Int? num_regions
    Int? num_bases
    Boolean? quiet
  }
  command <<<
    nanoraw plot_most_significant \
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
      ~{if defined(q_value_threshold) then ("--q-value-threshold " +  '"' + q_value_threshold + '"') else ""} \
      ~{if defined(sequences_filename) then ("--sequences-filename " +  '"' + sequences_filename + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
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
    pdf_filename: "PDF filename to store plot(s). Default:\\nNanopore_read_coverage.significant_difference.pdf"
    statistics_filename: "Filename to save/load base by base signal difference\\nstatistics. If file exists it will try to be loaded,\\nif it does not exist it will be created to save\\nstatistics. Default: Don't save/load."
    q_value_threshold: "Choose the number of regions to select by the FDR\\ncorrected p-values. Note that --num-regions will be\\nignored if this option is set."
    sequences_filename: "Filename to store sequences for selected regions (e.g.\\nfor PWM search). Sequences will be stored in FASTA\\nformat. Default: None."
    num_regions: "Number of regions to plot. Default: 10"
    num_bases: "Number of bases to plot from region. Default: 51"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}