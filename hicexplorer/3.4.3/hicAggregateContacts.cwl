#!/usr/bin/env cwl-runner

baseCommand:
- hicAggregateContacts
class: CommandLineTool
cwlVersion: v1.0
id: hicaggregatecontacts
inputs:
- doc: Path of the Hi-C matrix to plot.
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: File name to save the image.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: Interactions between regions in this BED file are plotted.
  id: bed
  inputBinding:
    prefix: --BED
  type: string
- doc: Range of contacts that will be considered for plotting the aggregate contacts
    in bp with the format low_range:high_range for example 1000000:20000000. The range
    should start at contacts larger than TAD size to reduce background interactions.
  id: range
  inputBinding:
    prefix: --range
  type: string
- doc: Optional second BED file. Interactions between regions in first and second
    BED file are plotted.
  id: bed2
  inputBinding:
    prefix: --BED2
  type: string
- doc: Number of bins to include in the submatrix. The bed regions will be centered
    between half number of bins and the other half number of bins.
  id: number_of_bins
  inputBinding:
    prefix: --numberOfBins
  type: string
- doc: '{total-counts,z-score,obs/exp,none} Type of transformation for the matrix.
    The options are "none", "total-counts", "z-score" and "obs/exp". If total counts
    are selected, the sub-matrix values are divided by the total counts for normalization.
    If z-score or obs/exp are selected, the Hi-C matrix is converted into a z-score
    or observed / expected matrix.'
  id: transform
  inputBinding:
    prefix: --transform
  type: boolean
- doc: Type of average used in the output matrix. Options are mean and median. Default
    is median.
  id: avg_type
  inputBinding:
    prefix: --avgType
  type: string
- doc: 'Optional parameter: Resolution for the image in case theoutput is a raster
    graphics image (e.g png, jpg).'
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: If this option is set, the values underlying the output matrix will be saved
    to tab-delimited tables (one per chromosome) using the indicated prefix, for example
    TSS_to_TSS_chrX.tab. If clustering is performed, the values are saved including
    the cluster_id in the file TSS_to_TSS_chrX_cluster_1.tab.
  id: outfile_prefix_matrix
  inputBinding:
    prefix: --outFilePrefixMatrix
  type: string
- doc: Output file prefix. If this option is set, the position of the contact positions
    are saved as (chrom1, start1, end1, chrom2, start2, end2) where chrom_n, start_n,
    end_n correspond to the pair of positions used to compute the submatrix. The data
    is saved per chromosome and per cluster separately (one file each). The format
    is {prefix}_{chrom}_{cluster_id}.tab. If no clusters were computed, then only
    one file per chromosome is produced.
  id: outfile_contact_pairs
  inputBinding:
    prefix: --outFileContactPairs
  type: string
- doc: If given, a heatmap (per chromosome) is saved. Each row in the heatmap contains
    thediagonal of each of the submatrices centered on the bed file. This file is
    useful to get an idea of the values that are used for the aggregate matrix and
    to determine the fraction of sub-matrices that are aggregated that may have an
    enrichment at the center.
  id: diagnostic_heat_map_file
  inputBinding:
    prefix: --diagnosticHeatmapFile
  type: string
- doc: Number of clusters to compute. When this option is set, the submatrices are
    split into clusters (per chromosome) using the k-means algorithm.
  id: k_means
  inputBinding:
    prefix: --kmeans
  type: string
- doc: Number of clusters to compute (per chromosome). When this option is set, the
    matrix is split into clusters using the hierarchical clustering algorithm, using
    "ward linkage". --hclust could be very slow if you have >1000 submatrices per
    chromosome. In those cases, you might prefer --kmeans
  id: hc_lust
  inputBinding:
    prefix: --hclust
  type: string
- doc: Options are "full", "center" and "diagonal". The full clustering is the default
    and takes all values of each submatrix for clustering. "center", takes only a
    square of length 3x3 from each submatrix and uses only this values for clustering.
    With the "diagonal" option the clustering is only carried out based on the submatrix
    diagonal (representing values at the same distance to each other.)
  id: how_to_cluster
  inputBinding:
    prefix: --howToCluster
  type: string
- doc: List of chromosomes to plot.
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  id: colormap
  inputBinding:
    prefix: --colorMap
  type: string
- doc: '{2d,3d}    Plot type.'
  id: plot_type
  inputBinding:
    prefix: --plotType
  type: boolean
- doc: Minimum value of the plotted score.
  id: vmin
  inputBinding:
    prefix: --vMin
  type: string
- doc: Maximum value of the plotted score.
  id: vmax
  inputBinding:
    prefix: --vMax
  type: string
