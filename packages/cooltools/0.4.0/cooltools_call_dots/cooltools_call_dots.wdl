version 1.0

task CooltoolsCalldots {
  input {
    String? expected_name
    String? weight_name
    Int? nproc
    Int? max_loci_separation
    Int? max_nans_tolerated
    Int? tile_size
    Int? kernel_width
    Int? kernel_peak
    Int? num_lambda_chunks
    Float? fdr
    Int? dots_clustering_radius
    Boolean? verbose
    String? output_scores
    File? output_hist_s
    File? output_calls
    File? score_dump_mode
    String? temp_dir
    Boolean? no_delete_temp
    String cool_path
    String expected_path
  }
  command <<<
    cooltools call_dots \
      ~{cool_path} \
      ~{expected_path} \
      ~{if defined(expected_name) then ("--expected-name " +  '"' + expected_name + '"') else ""} \
      ~{if defined(weight_name) then ("--weight-name " +  '"' + weight_name + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(max_loci_separation) then ("--max-loci-separation " +  '"' + max_loci_separation + '"') else ""} \
      ~{if defined(max_nans_tolerated) then ("--max-nans-tolerated " +  '"' + max_nans_tolerated + '"') else ""} \
      ~{if defined(tile_size) then ("--tile-size " +  '"' + tile_size + '"') else ""} \
      ~{if defined(kernel_width) then ("--kernel-width " +  '"' + kernel_width + '"') else ""} \
      ~{if defined(kernel_peak) then ("--kernel-peak " +  '"' + kernel_peak + '"') else ""} \
      ~{if defined(num_lambda_chunks) then ("--num-lambda-chunks " +  '"' + num_lambda_chunks + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(dots_clustering_radius) then ("--dots-clustering-radius " +  '"' + dots_clustering_radius + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_scores) then ("--output-scores " +  '"' + output_scores + '"') else ""} \
      ~{if defined(output_hist_s) then ("--output-hists " +  '"' + output_hist_s + '"') else ""} \
      ~{if defined(output_calls) then ("--output-calls " +  '"' + output_calls + '"') else ""} \
      ~{if defined(score_dump_mode) then ("--score-dump-mode " +  '"' + score_dump_mode + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""} \
      ~{if (no_delete_temp) then "--no-delete-temp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    expected_name: "Name of value column in EXPECTED_PATH\\n[default: balanced.avg]"
    weight_name: "Use balancing weight with this name.\\n[default: weight]"
    nproc: "Number of processes to split the work\\nbetween. [default: 1, i.e. no process pool]"
    max_loci_separation: "Limit loci separation for dot-calling, i.e.,\\ndo not call dots for loci that are further\\nthan max_loci_separation basepair apart.\\n2-20MB is reasonable and would capture most\\nof CTCF-dots.  [default: 2000000]"
    max_nans_tolerated: "Maximum number of NaNs tolerated in a\\nfootprint of every used filter. Must be\\ncontrolled with caution, as large max-nans-\\ntolerated, might lead to pixels scored in\\nthe padding area of the tiles to \\\"penetrate\\\"\\nto the list of scored pixels for the\\nstatistical testing. [max-nans-tolerated <=\\n2*w ]  [default: 1]"
    tile_size: "Tile size for the Hi-C heatmap tiling.\\nTypically on order of several mega-bases,\\nand <= max_loci_separation.  [default:\\n6000000]"
    kernel_width: "Outer half-width of the convolution kernel\\nin pixels e.g. outer size (w) of the 'donut'\\nkernel, with the 2*w+1 overall footprint of\\nthe 'donut'."
    kernel_peak: "Inner half-width of the convolution kernel\\nin pixels e.g. inner size (p) of the 'donut'\\nkernel, with the 2*p+1 overall footprint of\\nthe punch-hole."
    num_lambda_chunks: "Number of log-spaced bins to divide your\\nadjusted expected between. Same as\\nHiCCUPS_W1_MAX_INDX in the original HiCCUPS.\\n[default: 45]"
    fdr: "False discovery rate (FDR) to control in the\\nmultiple hypothesis testing BH-FDR\\nprocedure.  [default: 0.02]"
    dots_clustering_radius: "Radius for clustering dots that have been\\ncalled too close to each other.Typically on\\norder of 40 kilo-bases, and >= binsize.\\n[default: 39000]"
    verbose: "Enable verbose output"
    output_scores: "At the moment it is a redundant option that\\ndoes nothing. Reserve it for a better dump\\nof convolved scores."
    output_hist_s: "Specify output file name to store lambda-\\nchunked histograms. [Not implemented yet]"
    output_calls: "Specify output file name where to store the\\nresults of dot-calling, in a BEDPE format.\\nPre-processed dots are stored in that file.\\nPost-processed dots are stored in the\\n.postproc one."
    score_dump_mode: "Specify file format for the dump of\\nconvolved scores. This dump is used for the\\ndownstream processing and is read twice. Now\\n'parquet' is the only supported format.\\n'cooler' and 'hdf' in the future.  [default:\\nparquet]"
    temp_dir: "Create temporary files in specified"
    no_delete_temp: "Do not delete temporary files when finished."
    cool_path: ""
    expected_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_hist_s = "${in_output_hist_s}"
    File out_output_calls = "${in_output_calls}"
  }
}