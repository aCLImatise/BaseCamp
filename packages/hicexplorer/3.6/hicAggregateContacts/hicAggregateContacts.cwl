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
- id: in_range
  doc: "Range of contacts that will be considered for plotting\nthe aggregate contacts\
    \ in bp with the format\nlow_range:high_range for example 1000000:20000000. The\n\
    range should start at contacts larger than TAD size to\nreduce background interactions.\
    \ This will be ignored\nif inter-chromosomal contacts are of interest."
  type: long?
  inputBinding:
    prefix: --range
- id: in_row_wise
  doc: "If given,the insteractions between each row of the BED\nfile and its corresponding\
    \ row of the BED2 file are\ncomputed. If intra-chromosomal contacts are computed,\n\
    the rows with different chromosomes are ignored. If\ninter-chromosomal, the rows\
    \ with same chromosomes are\nignored. It keeps all the rows if `all`."
  type: boolean?
  inputBinding:
    prefix: --row_wise
- id: in_bed_two
  doc: "Optional second BED file. Interactions between regions\nin first and second\
    \ BED file are plotted."
  type: long?
  inputBinding:
    prefix: --BED2
- id: in_number_of_bins
  doc: "Number of bins to include in the submatrix. The bed\nregions will be centered\
    \ between half number of bins\nand the other half number of bins (Default: 51)."
  type: long?
  inputBinding:
    prefix: --numberOfBins
- id: in_transform
  doc: "{total-counts,z-score,obs/exp,none}\nType of transformation for the matrix.\
    \ The options are\n\"none\", \"total-counts\", \"z-score\" and \"obs/exp\". If\n\
    total counts are selected, the sub-matrix values are\ndivided by the total counts\
    \ for normalization. If\nz-score or obs/exp are selected, the Hi-C matrix is\n\
    converted into a z-score or observed / expected matrix\n(Default: none)."
  type: boolean?
  inputBinding:
    prefix: --transform
- id: in_operation_type
  doc: "Type of the operation to be applied to summerize the\nsubmatrices into a single\
    \ matrix. Options are sum,\nmean and median. (Default: median)"
  type: string?
  inputBinding:
    prefix: --operationType
- id: in_per_chr
  doc: "if set, it generates a plot per chromosome. It is only\naffected if intra-chromosomal\
    \ contacts are of\ninterest."
  type: boolean?
  inputBinding:
    prefix: --perChr
- id: in_large_regions_operation
  doc: "If a given coordinate in the bed file is larger than a\nbin of the input matrix,\
    \ by default only the first bin\nis taken into account. However there are more\n\
    posibilities to handel such a case. Users can ask for\nthe last bin or for center\
    \ of the region. As an\nexample if a region falls into bins [4,5,6] and\n`--numberOfBins\
    \ = 2` then if first, bins [3,4,5] are\nkept. If last: [5,6,7] and if center:\
    \ [4,5,6]."
  type: string?
  inputBinding:
    prefix: --largeRegionsOperation
- id: in_dpi
  doc: "Optional parameter: Resolution for the image in case\ntheoutput is a raster\
    \ graphics image (e.g png, jpg)\n(Default: 300)."
  type: long?
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
- id: in_outfile_obs_exp
  doc: "writes the obs/exp matrix to a file, if\n--transform=obs/exp."
  type: File?
  inputBinding:
    prefix: --outFileObsExp
- id: in_diagnostic_heat_map_file
  doc: "If given, a heatmap (per chromosome) is saved. Each\nrow in the heatmap contains\
    \ thediagonal of each of the\nsubmatrices centered on the bed file. This file\
    \ is\nuseful to get an idea of the values that are used for\nthe aggregate matrix\
    \ and to determine the fraction of\nsub-matrices that are aggregated that may\
    \ have an\nenrichment at the center."
  type: File?
  inputBinding:
    prefix: --diagnosticHeatmapFile
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
- id: in_spectral
  doc: "Number of clusters to compute (per chromosome). When\nthis option is set,\
    \ the matrix is split into clusters\nusing the spectral clustering algorithm."
  type: long?
  inputBinding:
    prefix: --spectral
- id: in_how_to_cluster
  doc: "Options are \"full\", \"center\" and \"diagonal\". The full\nclustering takes\
    \ all values of each submatrix for\nclustering. \"center\", takes only a square\
    \ of length\n3x3 from each submatrix and uses only this values for\nclustering.\
    \ With the \"diagonal\" option the clustering\nis only carried out based on the\
    \ submatrix diagonal\n(representing values at the same distance to each\nother)\
    \ (Default: full)."
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
    ormaps_reference.html (Default: RdYlBu_r)."
  type: string?
  inputBinding:
    prefix: --colorMap
- id: in_plot_type
  doc: 'Plot type (Default: 2d).'
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
  doc: --mode {inter-chr,intra-chr,all}
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicAggregateContacts
