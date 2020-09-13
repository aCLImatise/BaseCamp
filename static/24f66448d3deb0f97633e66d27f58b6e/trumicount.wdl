version 1.0

task Trumicount {
  input {
    File? input_bam
    File? input_umi_tools_group_out
    File? input_um_is
    File? output_counts
    File? output_um_is
    File? output_final_um_is
    File? output_read_dist
    String? output_plots
    File? output_groupwise_fits
    File? output_genewise_fits
    String? umi_tools
    String? umi_tools_option
    String? umi_sep
    Int? umi_pair_sep
    Boolean? paired
    Int? mapping_quality
    Boolean? filter_strand_um_is
    Boolean? combine_strand_um_is
    String? threshold
    Float? threshold_quantile
    Int? molecules
    Int? group_per
    Boolean? skip_groupwise_fits
    Boolean? include_filter_statistics
    Int? groupwise_min_um_is
    Int? genewise_min_um_is
    Int? cores
    String? variance_estimator
    Int? digits
    String? plot_hist_bin
    String? plot_hist_xmax
    Boolean? plot_skip_phantoms
    Int? plot_var_bins
    Boolean? plot_var_logy
    Boolean? verbose
  }
  command <<<
    trumicount \
      ~{if defined(input_bam) then ("--input-bam " +  '"' + input_bam + '"') else ""} \
      ~{if defined(input_umi_tools_group_out) then ("--input-umitools-group-out " +  '"' + input_umi_tools_group_out + '"') else ""} \
      ~{if defined(input_um_is) then ("--input-umis " +  '"' + input_um_is + '"') else ""} \
      ~{if defined(output_counts) then ("--output-counts " +  '"' + output_counts + '"') else ""} \
      ~{if defined(output_um_is) then ("--output-umis " +  '"' + output_um_is + '"') else ""} \
      ~{if defined(output_final_um_is) then ("--output-final-umis " +  '"' + output_final_um_is + '"') else ""} \
      ~{if defined(output_read_dist) then ("--output-readdist " +  '"' + output_read_dist + '"') else ""} \
      ~{if defined(output_plots) then ("--output-plots " +  '"' + output_plots + '"') else ""} \
      ~{if defined(output_groupwise_fits) then ("--output-groupwise-fits " +  '"' + output_groupwise_fits + '"') else ""} \
      ~{if defined(output_genewise_fits) then ("--output-genewise-fits " +  '"' + output_genewise_fits + '"') else ""} \
      ~{if defined(umi_tools) then ("--umitools " +  '"' + umi_tools + '"') else ""} \
      ~{if defined(umi_tools_option) then ("--umitools-option " +  '"' + umi_tools_option + '"') else ""} \
      ~{if defined(umi_sep) then ("--umi-sep " +  '"' + umi_sep + '"') else ""} \
      ~{if defined(umi_pair_sep) then ("--umipair-sep " +  '"' + umi_pair_sep + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(mapping_quality) then ("--mapping-quality " +  '"' + mapping_quality + '"') else ""} \
      ~{if (filter_strand_um_is) then "--filter-strand-umis" else ""} \
      ~{if (combine_strand_um_is) then "--combine-strand-umis" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threshold_quantile) then ("--threshold-quantile " +  '"' + threshold_quantile + '"') else ""} \
      ~{if defined(molecules) then ("--molecules " +  '"' + molecules + '"') else ""} \
      ~{if defined(group_per) then ("--group-per " +  '"' + group_per + '"') else ""} \
      ~{if (skip_groupwise_fits) then "--skip-groupwise-fits" else ""} \
      ~{if (include_filter_statistics) then "--include-filter-statistics" else ""} \
      ~{if defined(groupwise_min_um_is) then ("--groupwise-min-umis " +  '"' + groupwise_min_um_is + '"') else ""} \
      ~{if defined(genewise_min_um_is) then ("--genewise-min-umis " +  '"' + genewise_min_um_is + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(variance_estimator) then ("--variance-estimator " +  '"' + variance_estimator + '"') else ""} \
      ~{if defined(digits) then ("--digits " +  '"' + digits + '"') else ""} \
      ~{if defined(plot_hist_bin) then ("--plot-hist-bin " +  '"' + plot_hist_bin + '"') else ""} \
      ~{if defined(plot_hist_xmax) then ("--plot-hist-xmax " +  '"' + plot_hist_xmax + '"') else ""} \
      ~{if (plot_skip_phantoms) then "--plot-skip-phantoms" else ""} \
      ~{if defined(plot_var_bins) then ("--plot-var-bins " +  '"' + plot_var_bins + '"') else ""} \
      ~{if (plot_var_logy) then "--plot-var-logy" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_bam: "read UMIs from FILE (uses `umi_tools group`)"
    input_umi_tools_group_out: "read UMIs from FILE produced by `umi_tools group`"
    input_um_is: "read UMIs from FILE (previously produced by --output-umis)"
    output_counts: "write bias-corrected per-group counts and models to FILE"
    output_um_is: "write UMIs reported by `umi_tools group` to FILE"
    output_final_um_is: "write strand-combined and filtered UMIs to FILE"
    output_read_dist: "write global reads/UMI distribution (before and after filtering) to FILE"
    output_plots: "write diagnostic plots in PDF format to PLOT"
    output_groupwise_fits: "write group-wise model details to FILE"
    output_genewise_fits: "obsolete name for --output-groupwise-fits"
    umi_tools: "use executable UMITOOLS to run `umi_tools group` [Default: umi_tools]"
    umi_tools_option: "pass UMITOOLSOPT to `umi_tools group` (see `umi_tools group --help`)"
    umi_sep: "assume UMISEP separates read name and UMI (passed to umi_tools) [Default: _]"
    umi_pair_sep: "assume UMIPAIRSEP separates read1 and read2 UMI (see Strand UMIs) [Default: ]"
    paired: "assume BAM file contains paired reads (passed to umi_tools) [Default: FALSE]"
    mapping_quality: "ignored read with mapping quality below MAPQ (passed to umi_tools) [Default: 20]"
    filter_strand_um_is: "filtes UMIs where only one strands was observed [Default: FALSE]"
    combine_strand_um_is: "combine UMIs strand pairs (implies --filter-strand-umis) [Default: FALSE]"
    threshold: "remove UMIs with fewer than THRESHOLD reads"
    threshold_quantile: "use quantile Q of the raw read-count distribution for THRESHOLD [Default: 0.2]"
    molecules: "assume UMIs are initially represented by MOLECULES copies (strands) [Default: 2]"
    group_per: ",KEY2,...       counts UMIs per distinct key(s), can be \\\"cell\\\" and/or \\\"gene\\\",\\n\\\"cell\\\" implies --umitools-option --per-cell [Default: gene]"
    skip_groupwise_fits: "skip group-wise model fitting, stop after plotting the global fit"
    include_filter_statistics: "add filtered and unfiltered read and UMI counts to count table [Default: FALSE]"
    groupwise_min_um_is: "use global estimates for groups with fewer than MINUMIS (strand) UMIs [Default: 5]"
    genewise_min_um_is: "obsolete name for --groupwise-min-umis"
    cores: "spread group-wise model fitting over CORES cpus [Default: 1]"
    variance_estimator: "use VAREST to estimate variances, can be \\\"lsq\\\" or \\\"mle\\\" [Default: lsq]"
    digits: "number of digits to output [Default: 3]"
    plot_hist_bin: "make read count histogram bins PLOTXBIN wide"
    plot_hist_xmax: "limit read count histogram plot to at most PLOTXMAX reads per UMI"
    plot_skip_phantoms: "do not show phantom UMIs in histogram plot [Default: FALSE]"
    plot_var_bins: "plot PLOTVARBINS separate emprirical variances [Default: 10]"
    plot_var_logy: "use log scale for the variance (y) axis [Default: FALSE]"
    verbose: "enable verbose output"
  }
  output {
    File out_stdout = stdout()
    File out_input_um_is = "${in_input_um_is}"
  }
}