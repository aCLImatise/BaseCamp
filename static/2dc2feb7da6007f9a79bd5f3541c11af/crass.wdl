version 1.0

task Crass {
  input {
    Boolean? loglevel
    Directory? outdir
    Boolean? log_to_screen
    Boolean? mind_r
    Boolean? max_dr
    Boolean? min_num_repeats
    Boolean? min_spacer
    Boolean? max_spacer
    Boolean? window_length
    Boolean? cov_cut_off
    Boolean? km_er_count
    Boolean? graph_node_len
    Boolean? num_bins
    Boolean? graph_colour
    Boolean? long_description
    Boolean? show_singl_tons
  }
  command <<<
    crass \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (outdir) then "--outDir" else ""} \
      ~{if (log_to_screen) then "--logToScreen" else ""} \
      ~{if (mind_r) then "--minDR" else ""} \
      ~{if (max_dr) then "--maxDR" else ""} \
      ~{if (min_num_repeats) then "--minNumRepeats" else ""} \
      ~{if (min_spacer) then "--minSpacer" else ""} \
      ~{if (max_spacer) then "--maxSpacer" else ""} \
      ~{if (window_length) then "--windowLength" else ""} \
      ~{if (cov_cut_off) then "--covCutoff" else ""} \
      ~{if (km_er_count) then "--kmerCount" else ""} \
      ~{if (graph_node_len) then "--graphNodeLen" else ""} \
      ~{if (num_bins) then "--numBins" else ""} \
      ~{if (graph_colour) then "--graphColour" else ""} \
      ~{if (long_description) then "--longDescription" else ""} \
      ~{if (show_singl_tons) then "--showSingltons" else ""}
  >>>
  parameter_meta {
    loglevel: "<INT>   Output a log file and set a log level [1 - 4]"
    outdir: "<DIR>   Output directory [default: .]"
    log_to_screen: "Print the logging information to screen rather than a file"
    mind_r: "<INT>   Minimim length of the direct repeat\\nto search for [Default: 23]"
    max_dr: "<INT>   Maximim length of the direct repeat\\nto search for [Default: 47]"
    min_num_repeats: "<INT>   Total number of direct repeats in a CRISPR for\\nit to be considered real [Default: 2]"
    min_spacer: "<INT>   Minimim length of the spacer to search for [Default: 26]"
    max_spacer: "<INT>   Maximim length of the spacer to search for [Default: 50]"
    window_length: "<INT>   The length of the search window. Can only be\\na number between 6 - 9 [Default: 8]"
    cov_cut_off: "<INT>   Remove groups with less than x spacers [Default: 3]"
    km_er_count: "<INT>   The number of the kmers that need to be\\nshared for clustering [Default: 6]"
    graph_node_len: "<INT>   Length of the kmers used to make crispr nodes [Default: 7]"
    num_bins: "<INT>   The number of colour bins for the output graph.\\nDefault is to have as many colours as there are\\ndifferent values for the coverage of Nodes in the graph"
    graph_colour: "<TYPE>   Defines the range of colours to use for the output graph\\nthe different types available are:\\nred-blue, blue-red, green-red-blue, red-blue-green"
    long_description: "Set if you want the spacer sequence printed along with the ID in the spacer graph. [Default: false]"
    show_singl_tons: "Set if you want to print singleton spacers in the spacer graph [Default: false]"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}