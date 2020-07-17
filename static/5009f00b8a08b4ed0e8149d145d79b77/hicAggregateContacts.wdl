version 1.0

task HicAggregateContacts {
  input {
    String? matrix
    String? out_filename
    String? bed
    String? range
    String? bed_two
    String? number_of_bins
    String? transform
    String? avg_type
    String? dpi
    String? outfile_prefix_matrix
    String? outfile_contact_pairs
    String? diagnostic_heat_map_file
    String? k_means
    String? hc_lust
    String? how_to_cluster
    Array[String] chromosomes
    String? colormap
    String? plot_type
    String? vmin
    String? vmax
  }
  command <<<
    hicAggregateContacts \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(bed) then ("--BED " +  '"' + bed + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(bed_two) then ("--BED2 " +  '"' + bed_two + '"') else ""} \
      ~{if defined(number_of_bins) then ("--numberOfBins " +  '"' + number_of_bins + '"') else ""} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{if defined(avg_type) then ("--avgType " +  '"' + avg_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(outfile_prefix_matrix) then ("--outFilePrefixMatrix " +  '"' + outfile_prefix_matrix + '"') else ""} \
      ~{if defined(outfile_contact_pairs) then ("--outFileContactPairs " +  '"' + outfile_contact_pairs + '"') else ""} \
      ~{if defined(diagnostic_heat_map_file) then ("--diagnosticHeatmapFile " +  '"' + diagnostic_heat_map_file + '"') else ""} \
      ~{if defined(k_means) then ("--kmeans " +  '"' + k_means + '"') else ""} \
      ~{if defined(hc_lust) then ("--hclust " +  '"' + hc_lust + '"') else ""} \
      ~{if defined(how_to_cluster) then ("--howToCluster " +  '"' + how_to_cluster + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(plot_type) then ("--plotType " +  '"' + plot_type + '"') else ""} \
      ~{if defined(vmin) then ("--vMin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vMax " +  '"' + vmax + '"') else ""}
  >>>
  parameter_meta {
    matrix: "Path of the Hi-C matrix to plot."
    out_filename: "File name to save the image."
    bed: "Interactions between regions in this BED file are plotted."
    range: "Range of contacts that will be considered for plotting the aggregate contacts in bp with the format low_range:high_range for example 1000000:20000000. The range should start at contacts larger than TAD size to reduce background interactions."
    bed_two: "Optional second BED file. Interactions between regions in first and second BED file are plotted."
    number_of_bins: "Number of bins to include in the submatrix. The bed regions will be centered between half number of bins and the other half number of bins."
    transform: "Type of transformation for the matrix. The options are \"none\", \"total-counts\", \"z-score\" and \"obs/exp\". If total counts are selected, the sub-matrix values are divided by the total counts for normalization. If z-score or obs/exp are selected, the Hi-C matrix is converted into a z-score or observed / expected matrix."
    avg_type: "Type of average used in the output matrix. Options are mean and median. Default is median."
    dpi: "Optional parameter: Resolution for the image in case theoutput is a raster graphics image (e.g png, jpg)."
    outfile_prefix_matrix: "If this option is set, the values underlying the output matrix will be saved to tab-delimited tables (one per chromosome) using the indicated prefix, for example TSS_to_TSS_chrX.tab. If clustering is performed, the values are saved including the cluster_id in the file TSS_to_TSS_chrX_cluster_1.tab."
    outfile_contact_pairs: "Output file prefix. If this option is set, the position of the contact positions are saved as (chrom1, start1, end1, chrom2, start2, end2) where chrom_n, start_n, end_n correspond to the pair of positions used to compute the submatrix. The data is saved per chromosome and per cluster separately (one file each). The format is {prefix}_{chrom}_{cluster_id}.tab. If no clusters were computed, then only one file per chromosome is produced."
    diagnostic_heat_map_file: "If given, a heatmap (per chromosome) is saved. Each row in the heatmap contains thediagonal of each of the submatrices centered on the bed file. This file is useful to get an idea of the values that are used for the aggregate matrix and to determine the fraction of sub-matrices that are aggregated that may have an enrichment at the center."
    k_means: "Number of clusters to compute. When this option is set, the submatrices are split into clusters (per chromosome) using the k-means algorithm."
    hc_lust: "Number of clusters to compute (per chromosome). When this option is set, the matrix is split into clusters using the hierarchical clustering algorithm, using \"ward linkage\". --hclust could be very slow if you have >1000 submatrices per chromosome. In those cases, you might prefer --kmeans"
    how_to_cluster: "Options are \"full\", \"center\" and \"diagonal\". The full clustering is the default and takes all values of each submatrix for clustering. \"center\", takes only a square of length 3x3 from each submatrix and uses only this values for clustering. With the \"diagonal\" option the clustering is only carried out based on the submatrix diagonal (representing values at the same distance to each other.)"
    chromosomes: "List of chromosomes to plot."
    colormap: "Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col ormaps_reference.html"
    plot_type: "Plot type."
    vmin: "Minimum value of the plotted score."
    vmax: "Maximum value of the plotted score."
  }
}