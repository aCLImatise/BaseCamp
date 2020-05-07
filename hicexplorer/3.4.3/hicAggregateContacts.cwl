class: CommandLineTool
id: hicAggregateContacts.cwl
inputs:
- id: matrix
  doc: Path of the Hi-C matrix to plot.
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: File name to save the image.
  type: string
  inputBinding:
    prefix: --outFileName
- id: bed
  doc: Interactions between regions in this BED file are plotted.
  type: string
  inputBinding:
    prefix: --BED
- id: range
  doc: Range of contacts that will be considered for plotting the aggregate contacts
    in bp with the format low_range:high_range for example 1000000:20000000. The range
    should start at contacts larger than TAD size to reduce background interactions.
  type: string
  inputBinding:
    prefix: --range
- id: bed2
  doc: Optional second BED file. Interactions between regions in first and second
    BED file are plotted.
  type: string
  inputBinding:
    prefix: --BED2
- id: number_of_bins
  doc: Number of bins to include in the submatrix. The bed regions will be centered
    between half number of bins and the other half number of bins.
  type: string
  inputBinding:
    prefix: --numberOfBins
- id: transform
  doc: '{total-counts,z-score,obs/exp,none} Type of transformation for the matrix.
    The options are "none", "total-counts", "z-score" and "obs/exp". If total counts
    are selected, the sub-matrix values are divided by the total counts for normalization.
    If z-score or obs/exp are selected, the Hi-C matrix is converted into a z-score
    or observed / expected matrix.'
  type: boolean
  inputBinding:
    prefix: --transform
- id: avg_type
  doc: Type of average used in the output matrix. Options are mean and median. Default
    is median.
  type: string
  inputBinding:
    prefix: --avgType
- id: dpi
  doc: 'Optional parameter: Resolution for the image in case theoutput is a raster
    graphics image (e.g png, jpg).'
  type: string
  inputBinding:
    prefix: --dpi
- id: outfile_prefix_matrix
  doc: If this option is set, the values underlying the output matrix will be saved
    to tab-delimited tables (one per chromosome) using the indicated prefix, for example
    TSS_to_TSS_chrX.tab. If clustering is performed, the values are saved including
    the cluster_id in the file TSS_to_TSS_chrX_cluster_1.tab.
  type: string
  inputBinding:
    prefix: --outFilePrefixMatrix
- id: outfile_contact_pairs
  doc: Output file prefix. If this option is set, the position of the contact positions
    are saved as (chrom1, start1, end1, chrom2, start2, end2) where chrom_n, start_n,
    end_n correspond to the pair of positions used to compute the submatrix. The data
    is saved per chromosome and per cluster separately (one file each). The format
    is {prefix}_{chrom}_{cluster_id}.tab. If no clusters were computed, then only
    one file per chromosome is produced.
  type: string
  inputBinding:
    prefix: --outFileContactPairs
- id: diagnostic_heat_map_file
  doc: If given, a heatmap (per chromosome) is saved. Each row in the heatmap contains
    thediagonal of each of the submatrices centered on the bed file. This file is
    useful to get an idea of the values that are used for the aggregate matrix and
    to determine the fraction of sub-matrices that are aggregated that may have an
    enrichment at the center.
  type: string
  inputBinding:
    prefix: --diagnosticHeatmapFile
- id: k_means
  doc: Number of clusters to compute. When this option is set, the submatrices are
    split into clusters (per chromosome) using the k-means algorithm.
  type: string
  inputBinding:
    prefix: --kmeans
- id: hc_lust
  doc: Number of clusters to compute (per chromosome). When this option is set, the
    matrix is split into clusters using the hierarchical clustering algorithm, using
    "ward linkage". --hclust could be very slow if you have >1000 submatrices per
    chromosome. In those cases, you might prefer --kmeans
  type: string
  inputBinding:
    prefix: --hclust
- id: how_to_cluster
  doc: Options are "full", "center" and "diagonal". The full clustering is the default
    and takes all values of each submatrix for clustering. "center", takes only a
    square of length 3x3 from each submatrix and uses only this values for clustering.
    With the "diagonal" option the clustering is only carried out based on the submatrix
    diagonal (representing values at the same distance to each other.)
  type: string
  inputBinding:
    prefix: --howToCluster
- id: chromosomes
  doc: List of chromosomes to plot.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: colormap
  doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  type: string
  inputBinding:
    prefix: --colorMap
- id: plot_type
  doc: '{2d,3d}    Plot type.'
  type: boolean
  inputBinding:
    prefix: --plotType
- id: vmin
  doc: Minimum value of the plotted score.
  type: string
  inputBinding:
    prefix: --vMin
- id: vmax
  doc: Maximum value of the plotted score.
  type: string
  inputBinding:
    prefix: --vMax
outputs: []
cwlVersion: v1.1
baseCommand:
- hicAggregateContacts
