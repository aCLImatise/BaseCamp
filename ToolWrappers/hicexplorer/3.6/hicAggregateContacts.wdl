version 1.0

task HicAggregateContacts {
  input {
    File? matrix
    File? out_filename
    File? bed
    Int? range
    Boolean? row_wise
    Int? bed_two
    Int? number_of_bins
    Boolean? transform
    String? operation_type
    Boolean? per_chr
    String? large_regions_operation
    Int? dpi
    File? outfile_prefix_matrix
    File? outfile_contact_pairs
    File? outfile_obs_exp
    File? diagnostic_heat_map_file
    Int? k_means
    Int? hc_lust
    Int? spectral
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
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if (row_wise) then "--row_wise" else ""} \
      ~{if defined(bed_two) then ("--BED2 " +  '"' + bed_two + '"') else ""} \
      ~{if defined(number_of_bins) then ("--numberOfBins " +  '"' + number_of_bins + '"') else ""} \
      ~{if (transform) then "--transform" else ""} \
      ~{if defined(operation_type) then ("--operationType " +  '"' + operation_type + '"') else ""} \
      ~{if (per_chr) then "--perChr" else ""} \
      ~{if defined(large_regions_operation) then ("--largeRegionsOperation " +  '"' + large_regions_operation + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(outfile_prefix_matrix) then ("--outFilePrefixMatrix " +  '"' + outfile_prefix_matrix + '"') else ""} \
      ~{if defined(outfile_contact_pairs) then ("--outFileContactPairs " +  '"' + outfile_contact_pairs + '"') else ""} \
      ~{if defined(outfile_obs_exp) then ("--outFileObsExp " +  '"' + outfile_obs_exp + '"') else ""} \
      ~{if defined(diagnostic_heat_map_file) then ("--diagnosticHeatmapFile " +  '"' + diagnostic_heat_map_file + '"') else ""} \
      ~{if defined(k_means) then ("--kmeans " +  '"' + k_means + '"') else ""} \
      ~{if defined(hc_lust) then ("--hclust " +  '"' + hc_lust + '"') else ""} \
      ~{if defined(spectral) then ("--spectral " +  '"' + spectral + '"') else ""} \
      ~{if defined(how_to_cluster) then ("--howToCluster " +  '"' + how_to_cluster + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(plot_type) then ("--plotType " +  '"' + plot_type + '"') else ""} \
      ~{if defined(vmin) then ("--vMin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vMax " +  '"' + vmax + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrix: "Path of the Hi-C matrix to plot."
    out_filename: "File name to save the image."
    bed: "Interactions between regions in this BED file are"
    range: "Range of contacts that will be considered for plotting\\nthe aggregate contacts in bp with the format\\nlow_range:high_range for example 1000000:20000000. The\\nrange should start at contacts larger than TAD size to\\nreduce background interactions. This will be ignored\\nif inter-chromosomal contacts are of interest."
    row_wise: "If given,the insteractions between each row of the BED\\nfile and its corresponding row of the BED2 file are\\ncomputed. If intra-chromosomal contacts are computed,\\nthe rows with different chromosomes are ignored. If\\ninter-chromosomal, the rows with same chromosomes are\\nignored. It keeps all the rows if `all`."
    bed_two: "Optional second BED file. Interactions between regions\\nin first and second BED file are plotted."
    number_of_bins: "Number of bins to include in the submatrix. The bed\\nregions will be centered between half number of bins\\nand the other half number of bins (Default: 51)."
    transform: "{total-counts,z-score,obs/exp,none}\\nType of transformation for the matrix. The options are\\n\\\"none\\\", \\\"total-counts\\\", \\\"z-score\\\" and \\\"obs/exp\\\". If\\ntotal counts are selected, the sub-matrix values are\\ndivided by the total counts for normalization. If\\nz-score or obs/exp are selected, the Hi-C matrix is\\nconverted into a z-score or observed / expected matrix\\n(Default: none)."
    operation_type: "Type of the operation to be applied to summerize the\\nsubmatrices into a single matrix. Options are sum,\\nmean and median. (Default: median)"
    per_chr: "if set, it generates a plot per chromosome. It is only\\naffected if intra-chromosomal contacts are of\\ninterest."
    large_regions_operation: "If a given coordinate in the bed file is larger than a\\nbin of the input matrix, by default only the first bin\\nis taken into account. However there are more\\nposibilities to handel such a case. Users can ask for\\nthe last bin or for center of the region. As an\\nexample if a region falls into bins [4,5,6] and\\n`--numberOfBins = 2` then if first, bins [3,4,5] are\\nkept. If last: [5,6,7] and if center: [4,5,6]."
    dpi: "Optional parameter: Resolution for the image in case\\ntheoutput is a raster graphics image (e.g png, jpg)\\n(Default: 300)."
    outfile_prefix_matrix: "If this option is set, the values underlying the\\noutput matrix will be saved to tab-delimited tables\\n(one per chromosome) using the indicated prefix, for\\nexample TSS_to_TSS_chrX.tab. If clustering is\\nperformed, the values are saved including the\\ncluster_id in the file TSS_to_TSS_chrX_cluster_1.tab."
    outfile_contact_pairs: "Output file prefix. If this option is set, the\\nposition of the contact positions are saved as\\n(chrom1, start1, end1, chrom2, start2, end2) where\\nchrom_n, start_n, end_n correspond to the pair of\\npositions used to compute the submatrix. The data is\\nsaved per chromosome and per cluster separately (one\\nfile each). The format is\\n{prefix}_{chrom}_{cluster_id}.tab. If no clusters were\\ncomputed, then only one file per chromosome is\\nproduced."
    outfile_obs_exp: "writes the obs/exp matrix to a file, if\\n--transform=obs/exp."
    diagnostic_heat_map_file: "If given, a heatmap (per chromosome) is saved. Each\\nrow in the heatmap contains thediagonal of each of the\\nsubmatrices centered on the bed file. This file is\\nuseful to get an idea of the values that are used for\\nthe aggregate matrix and to determine the fraction of\\nsub-matrices that are aggregated that may have an\\nenrichment at the center."
    k_means: "Number of clusters to compute. When this option is\\nset, the submatrices are split into clusters (per\\nchromosome) using the k-means algorithm."
    hc_lust: "Number of clusters to compute (per chromosome). When\\nthis option is set, the matrix is split into clusters\\nusing the hierarchical clustering algorithm, using\\n\\\"ward linkage\\\". --hclust could be very slow if you\\nhave >1000 submatrices per chromosome. In those cases,\\nyou might prefer --kmeans"
    spectral: "Number of clusters to compute (per chromosome). When\\nthis option is set, the matrix is split into clusters\\nusing the spectral clustering algorithm."
    how_to_cluster: "Options are \\\"full\\\", \\\"center\\\" and \\\"diagonal\\\". The full\\nclustering takes all values of each submatrix for\\nclustering. \\\"center\\\", takes only a square of length\\n3x3 from each submatrix and uses only this values for\\nclustering. With the \\\"diagonal\\\" option the clustering\\nis only carried out based on the submatrix diagonal\\n(representing values at the same distance to each\\nother) (Default: full)."
    chromosomes: "List of chromosomes to plot."
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html (Default: RdYlBu_r)."
    plot_type: "Plot type (Default: 2d)."
    vmin: "Minimum value of the plotted score."
    vmax: "Maximum value of the plotted score."
    plotted_dot: "--mode {inter-chr,intra-chr,all}"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_outfile_prefix_matrix = "${in_outfile_prefix_matrix}"
    File out_outfile_contact_pairs = "${in_outfile_contact_pairs}"
  }
}