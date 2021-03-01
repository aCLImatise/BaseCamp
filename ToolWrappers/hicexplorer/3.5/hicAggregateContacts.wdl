version 1.0

task HicAggregateContacts {
  input {
    File? matrix
    File? out_filename
    File? bed
    Int? bed_two
    Int? number_of_bins
    Boolean? transform
    String? avg_type
    String? dpi
    File? outfile_prefix_matrix
    File? outfile_contact_pairs
    File? diagnostic_heat_map_file
    Boolean? row_wise
    Int? k_means
    Int? hc_lust
    String? how_to_cluster
    Array[String] chromosomes
    String? colormap
    String? plot_type
    String? vmin
    String? vmax
    String plotted_dot
  }
  command <<<
    hicAggregateContacts \
      ~{plotted_dot} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(bed) then ("--BED " +  '"' + bed + '"') else ""} \
      ~{if defined(bed_two) then ("--BED2 " +  '"' + bed_two + '"') else ""} \
      ~{if defined(number_of_bins) then ("--numberOfBins " +  '"' + number_of_bins + '"') else ""} \
      ~{if (transform) then "--transform" else ""} \
      ~{if defined(avg_type) then ("--avgType " +  '"' + avg_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(outfile_prefix_matrix) then ("--outFilePrefixMatrix " +  '"' + outfile_prefix_matrix + '"') else ""} \
      ~{if defined(outfile_contact_pairs) then ("--outFileContactPairs " +  '"' + outfile_contact_pairs + '"') else ""} \
      ~{if defined(diagnostic_heat_map_file) then ("--diagnosticHeatmapFile " +  '"' + diagnostic_heat_map_file + '"') else ""} \
      ~{if (row_wise) then "--row_wise" else ""} \
      ~{if defined(k_means) then ("--kmeans " +  '"' + k_means + '"') else ""} \
      ~{if defined(hc_lust) then ("--hclust " +  '"' + hc_lust + '"') else ""} \
      ~{if defined(how_to_cluster) then ("--howToCluster " +  '"' + how_to_cluster + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(plot_type) then ("--plotType " +  '"' + plot_type + '"') else ""} \
      ~{if defined(vmin) then ("--vMin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vMax " +  '"' + vmax + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "Path of the Hi-C matrix to plot."
    out_filename: "File name to save the image."
    bed: "Interactions between regions in this BED file are"
    bed_two: "Optional second BED file. Interactions between regions\\nin first and second BED file are plotted."
    number_of_bins: "Number of bins to include in the submatrix. The bed\\nregions will be centered between half number of bins\\nand the other half number of bins."
    transform: "{total-counts,z-score,obs/exp,none}\\nType of transformation for the matrix. The options are\\n\\\"none\\\", \\\"total-counts\\\", \\\"z-score\\\" and \\\"obs/exp\\\". If\\ntotal counts are selected, the sub-matrix values are\\ndivided by the total counts for normalization. If\\nz-score or obs/exp are selected, the Hi-C matrix is\\nconverted into a z-score or observed / expected\\nmatrix."
    avg_type: "Type of average used in the output matrix. Options are\\nmean and median. Default is median."
    dpi: "Optional parameter: Resolution for the image in case\\ntheoutput is a raster graphics image (e.g png, jpg)."
    outfile_prefix_matrix: "If this option is set, the values underlying the\\noutput matrix will be saved to tab-delimited tables\\n(one per chromosome) using the indicated prefix, for\\nexample TSS_to_TSS_chrX.tab. If clustering is\\nperformed, the values are saved including the\\ncluster_id in the file TSS_to_TSS_chrX_cluster_1.tab."
    outfile_contact_pairs: "Output file prefix. If this option is set, the\\nposition of the contact positions are saved as\\n(chrom1, start1, end1, chrom2, start2, end2) where\\nchrom_n, start_n, end_n correspond to the pair of\\npositions used to compute the submatrix. The data is\\nsaved per chromosome and per cluster separately (one\\nfile each). The format is\\n{prefix}_{chrom}_{cluster_id}.tab. If no clusters were\\ncomputed, then only one file per chromosome is\\nproduced."
    diagnostic_heat_map_file: "If given, a heatmap (per chromosome) is saved. Each\\nrow in the heatmap contains thediagonal of each of the\\nsubmatrices centered on the bed file. This file is\\nuseful to get an idea of the values that are used for\\nthe aggregate matrix and to determine the fraction of\\nsub-matrices that are aggregated that may have an\\nenrichment at the center."
    row_wise: "If given,the insteractions between each row of the BED\\nfile and its corresponding row of the BED2 file are\\ncomputed."
    k_means: "Number of clusters to compute. When this option is\\nset, the submatrices are split into clusters (per\\nchromosome) using the k-means algorithm."
    hc_lust: "Number of clusters to compute (per chromosome). When\\nthis option is set, the matrix is split into clusters\\nusing the hierarchical clustering algorithm, using\\n\\\"ward linkage\\\". --hclust could be very slow if you\\nhave >1000 submatrices per chromosome. In those cases,\\nyou might prefer --kmeans"
    how_to_cluster: "Options are \\\"full\\\", \\\"center\\\" and \\\"diagonal\\\". The full\\nclustering is the default and takes all values of each\\nsubmatrix for clustering. \\\"center\\\", takes only a\\nsquare of length 3x3 from each submatrix and uses only\\nthis values for clustering. With the \\\"diagonal\\\" option\\nthe clustering is only carried out based on the\\nsubmatrix diagonal (representing values at the same\\ndistance to each other.)"
    chromosomes: "List of chromosomes to plot."
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html"
    plot_type: "Plot type."
    vmin: "Minimum value of the plotted score."
    vmax: "Maximum value of the plotted score."
    plotted_dot: "--range RANGE         Range of contacts that will be considered for plotting"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_outfile_prefix_matrix = "${in_outfile_prefix_matrix}"
    File out_outfile_contact_pairs = "${in_outfile_contact_pairs}"
  }
}