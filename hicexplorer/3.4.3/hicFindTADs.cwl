#!/usr/bin/env cwl-runner

baseCommand:
- hicFindTADs
class: CommandLineTool
cwlVersion: v1.0
id: hicfindtads
inputs:
- doc: Corrected Hi-C matrix to use for the computations.
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: 'File prefix to save the resulting files: 1. <prefix>_tad_separation.bm The
    format of the output file is chrom start end TAD-sep1 TAD-sep2 TAD-sep3 .. etc.
    We call this format a bedgraph matrix and can be plotted using `hicPlotTADs`.
    Each of the TAD- separation scores in the file corresponds to a different window
    length starting from --minDepth to --maxDepth. 2. <prefix>_zscore_matrix.h5, the
    z-score matrix used for the computation of the TAD-separation score. 3. < prefix
    > _boundaries.bed, which contains the positions of boundaries. The genomic coordinates
    in this file correspond to the resolution used. Thus, for Hi-C bins of 10.000bp
    the boundary position is 10.000bp long. For restriction fragment matrices the
    boundary position varies depending on the fragment length at the boundary. 4.
    <prefix>_domains.bed contains the TADs positions. This is a non-overlapping set
    of genomic positions. 5. <prefix>_boundaries.gff Similar to the boundaries bed
    file but with extra information (p-value, delta). 6. <prefix>_score.bedgraph file
    contains the TAD- separation score measured at each Hi-C bin coordinate. Is useful
    to visualize in a genome browser. The delta and p-value settings are saved as
    part of the name.'
  id: out_prefix
  inputBinding:
    prefix: --outPrefix
  type: string
- doc: Select the bonferroni or false discovery rate for a multiple comparison. Bonferroni
    controls the family- wise error rate (FWER) and needs a p-value. The false discovery
    rate (FDR) controls the likelyhood of type I errors and needs a q-value. As a
    third option it is possible to not use a multiple comparison method at all.
  id: correct_for_multiple_testing
  inputBinding:
    prefix: --correctForMultipleTesting
  type: string
- doc: bp     Minimum window length (in bp) to be considered to the left and to the
    right of each Hi-C bin. This number should be at least 3 times as large as the
    bin size of the Hi-C matrix.
  id: min_depth
  inputBinding:
    prefix: --minDepth
  type: long
- doc: bp     Maximum window length to be considered to the left and to the right
    of the cut point in bp. This number should around 6-10 times as large as the bin
    size of the Hi-C matrix.
  id: maxdepth
  inputBinding:
    prefix: --maxDepth
  type: long
- doc: 'bp         Step size when moving from --minDepth to --maxDepth. Note, the
    step size grows exponentially as `minDeph + (step * int(x)**1.5) for x in [0,
    1, ...]` until it reaches `maxDepth`. For example, selecting step=10,000, minDepth=20,000
    and maxDepth=150,000 will compute TAD-scores for window sizes: 20,000, 30,000,
    40,000, 70,000 and 100,000'
  id: step
  inputBinding:
    prefix: --step
  type: long
- doc: Sometimes it is useful to change some of the parameters without recomputing
    the z-score matrix and the TAD-separation score. For this case, the prefix containing
    the TAD separation score and the z-score matrix can be given. If this option is
    given, new boundaries will be computed but the values of --minDepth, --maxDepth
    and --step will not be used.
  id: tad_sep_score_prefix
  inputBinding:
    prefix: --TAD_sep_score_prefix
  type: string
- doc: P-value threshold for the Bonferroni correction / q-value for FDR. The probability
    of a local minima to be a boundary is estimated by comparing the distribution
    (Wilcoxon ranksum) of the z-scores between the left and right regions (diamond)
    at the local minimum with the matrix z-scores for a diamond at --minDepth to the
    left and a diamond --minDepth to the right. If --correctForMultipleTesting is
    'None' the threshold is applied on the raw p-values without any multiple testing
    correction. Set it to '1' if no threshold should be used.
  id: threshold_comparisons
  inputBinding:
    prefix: --thresholdComparisons
  type: string
- doc: Minimum threshold of the difference between the TAD- separation score of a
    putative boundary and the mean of the TAD-sep. score of surrounding bins. The
    delta value reduces spurious boundaries that are shallow, which usually occur
    at the center of large TADs when the TAD-sep. score is flat. Higher delta threshold
    values produce more conservative boundary estimations. By default a value of 0.01
    is used.
  id: delta
  inputBinding:
    prefix: --delta
  type: string
- doc: Minimum distance between boundaries (in bp). This parameter can be used to
    reduce spurious boundaries caused by noise.
  id: min_boundary_distance
  inputBinding:
    prefix: --minBoundaryDistance
  type: long
- doc: Chromosomes and order in which the chromosomes should be plotted. This option
    overrides --region and --region2.
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: Number of processors to use
  id: number_of_processors
  inputBinding:
    prefix: --numberOfProcessors
  type: string
