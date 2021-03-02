class: CommandLineTool
id: hicAggregateContacts.cwl
inputs:
- id: in_matrix
  doc: Path of the Hi-C matrix to plot.
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: File name to save the image.
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_bed
  doc: Interactions between regions in this BED file are
  type: File?
  inputBinding:
    prefix: --BED
- id: in_bed_two
  doc: "Optional second BED file. Interactions between regions\nin first and second\
    \ BED file are plotted."
  type: long?
  inputBinding:
    prefix: --BED2
- id: in_number_of_bins
  doc: "Number of bins to include in the submatrix. The bed\nregions will be centered\
    \ between half number of bins\nand the other half number of bins."
  type: long?
  inputBinding:
    prefix: --numberOfBins
- id: in_transform
  doc: "{total-counts,z-score,obs/exp,none}\nType of transformation for the matrix.\
    \ The options are\n\"none\", \"total-counts\", \"z-score\" and \"obs/exp\". If\n\
    total counts are selected, the sub-matrix values are\ndivided by the total counts\
    \ for normalization. If\nz-score or obs/exp are selected, the Hi-C matrix is\n\
    converted into a z-score or observed / expected\nmatrix."
  type: boolean?
  inputBinding:
    prefix: --transform
- id: in_avg_type
  doc: "Type of average used in the output matrix. Options are\nmean and median. Default\
    \ is median."
  type: string?
  inputBinding:
    prefix: --avgType
- id: in_dpi
  doc: "Optional parameter: Resolution for the image in case\ntheoutput is a raster\
    \ graphics image (e.g png, jpg)."
  type: string?
  inputBinding:
    prefix: --dpi
- id: in_outfile_prefix_matrix
  doc: "If this option is set, the values underlying the\noutput matrix will be saved\
    \ to tab-delimited tables\n(one per chromosome) using the indicated prefix, for\n\
    example TSS_to_TSS_chrX.tab. If clustering is\nperformed, the values are saved\
    \ including the\ncluster_id in the file TSS_to_TSS_chrX_cluster_1.tab."
  type: File?
  inputBinding:
    prefix: --outFilePrefixMatrix
- id: in_outfile_contact_pairs
  doc: "Output file prefix. If this option is set, the\nposition of the contact positions\
    \ are saved as\n(chrom1, start1, end1, chrom2, start2, end2) where\nchrom_n, start_n,\
    \ end_n correspond to the pair of\npositions used to compute the submatrix. The\
    \ data is\nsaved per chromosome and per cluster separately (one\nfile each). The\
    \ format is\n{prefix}_{chrom}_{cluster_id}.tab. If no clusters were\ncomputed,\
    \ then only one file per chromosome is\nproduced."
  type: File?
  inputBinding:
    prefix: --outFileContactPairs
- id: in_diagnostic_heat_map_file
  doc: "If given, a heatmap (per chromosome) is saved. Each\nrow in the heatmap contains\
    \ thediagonal of each of the\nsubmatrices centered on the bed file. This file\
    \ is\nuseful to get an idea of the values that are used for\nthe aggregate matrix\
    \ and to determine the fraction of\nsub-matrices that are aggregated that may\
    \ have an\nenrichment at the center."
  type: File?
  inputBinding:
    prefix: --diagnosticHeatmapFile
- id: in_row_wise
  doc: "If given,the insteractions between each row of the BED\nfile and its corresponding\
    \ row of the BED2 file are\ncomputed."
  type: boolean?
  inputBinding:
    prefix: --row_wise
- id: in_k_means
  doc: "Number of clusters to compute. When this option is\nset, the submatrices are\
    \ split into clusters (per\nchromosome) using the k-means algorithm."
  type: long?
  inputBinding:
    prefix: --kmeans
- id: in_hc_lust
  doc: "Number of clusters to compute (per chromosome). When\nthis option is set,\
    \ the matrix is split into clusters\nusing the hierarchical clustering algorithm,\
    \ using\n\"ward linkage\". --hclust could be very slow if you\nhave >1000 submatrices\
    \ per chromosome. In those cases,\nyou might prefer --kmeans"
  type: long?
  inputBinding:
    prefix: --hclust
- id: in_how_to_cluster
  doc: "Options are \"full\", \"center\" and \"diagonal\". The full\nclustering is\
    \ the default and takes all values of each\nsubmatrix for clustering. \"center\"\
    , takes only a\nsquare of length 3x3 from each submatrix and uses only\nthis values\
    \ for clustering. With the \"diagonal\" option\nthe clustering is only carried\
    \ out based on the\nsubmatrix diagonal (representing values at the same\ndistance\
    \ to each other.)"
  type: string?
  inputBinding:
    prefix: --howToCluster
- id: in_chromosomes
  doc: List of chromosomes to plot.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_colormap
  doc: "Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html"
  type: string?
  inputBinding:
    prefix: --colorMap
- id: in_plot_type
  doc: Plot type.
  type: string?
  inputBinding:
    prefix: --plotType
- id: in_vmin
  doc: Minimum value of the plotted score.
  type: string?
  inputBinding:
    prefix: --vMin
- id: in_vmax
  doc: Maximum value of the plotted score.
  type: string?
  inputBinding:
    prefix: --vMax
- id: in_plotted_dot
  doc: --range RANGE         Range of contacts that will be considered for plotting
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: File name to save the image.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_outfile_prefix_matrix
  doc: "If this option is set, the values underlying the\noutput matrix will be saved\
    \ to tab-delimited tables\n(one per chromosome) using the indicated prefix, for\n\
    example TSS_to_TSS_chrX.tab. If clustering is\nperformed, the values are saved\
    \ including the\ncluster_id in the file TSS_to_TSS_chrX_cluster_1.tab."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_prefix_matrix)
- id: out_outfile_contact_pairs
  doc: "Output file prefix. If this option is set, the\nposition of the contact positions\
    \ are saved as\n(chrom1, start1, end1, chrom2, start2, end2) where\nchrom_n, start_n,\
    \ end_n correspond to the pair of\npositions used to compute the submatrix. The\
    \ data is\nsaved per chromosome and per cluster separately (one\nfile each). The\
    \ format is\n{prefix}_{chrom}_{cluster_id}.tab. If no clusters were\ncomputed,\
    \ then only one file per chromosome is\nproduced."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_contact_pairs)
hints: []
cwlVersion: v1.1
baseCommand:
- hicAggregateContacts
