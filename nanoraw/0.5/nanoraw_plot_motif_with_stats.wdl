version 1.0

task NanorawPlotMotifWithStats {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[String] fast_five_based_irs
    Array[String] fast_five_based_irs_two
    String? motif
    String? corrected_group
    String? over_plot_threshold
    String? over_plot_type
    Array[String] obs_per_base_filter
    String? test_type
    String? fishers_method_offset
    Int? minimum_test_reads
    String? pdf_filename
    String? statistics_filename
    String? num_regions
    String? num_context
    String? num_statistics
    Boolean? quiet
  }
  command <<<
    nanoraw plot_motif_with_stats \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--2d" false="" two_d} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
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
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template and/or complement reads are stored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall- subgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    fast_five_based_irs_two: "Second set of directories containing fast5 files to compare."
    motif: "A motif to plot the most significant regions genomic regions as well as statistic distributions at each genomic base in the region. Supports single letter codes."
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    over_plot_threshold: "Number of reads to trigger alternative plot type instead of raw signal due to overplotting. Default: 50"
    over_plot_type: "Plot type for regions with higher coverage. Choices: Downsample (default), Boxplot , Quantile, Violin"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of percentiles of the number of observations assigned to a base (default no filter). Format thresholds as \"percentile:thresh [pctl2:thresh2 ...]\" E.g. reads with 99th pctl <200 obs and max <5k obs would be \"99:200 100:5000\"."
    test_type: "Type of significance test to apply. Choices are: mw_utest (default; mann-whitney u-test), ttest."
    fishers_method_offset: "Offset up and downstream over which to compute combined p-values using Fisher's method. Default: 2."
    minimum_test_reads: "Number of reads required from both samples to test for significant difference in signal level. Default: 5"
    pdf_filename: "PDF filename to store plot(s). Default: Nanopore_read_coverage.statistics_around_motif.pdf"
    statistics_filename: "Filename to save/load base by base signal difference statistics. If file exists it will try to be loaded, if it does not exist it will be created to save statistics. Default: Don't save/load."
    num_regions: "Number of regions to plot. Default: 5"
    num_context: "Number of bases surrounding motif of interest. Default: 2"
    num_statistics: "Number of regions at which to accumulate statistics for distribution plots. Default: 200"
    quiet: "Don't print status information."
  }
}