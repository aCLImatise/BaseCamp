version 1.0

task HicFindTADs {
  input {
    String? matrix
    Int? out_prefix
    String? correct_for_multiple_testing
    Int? min_depth
    Int? maxdepth
    Int? step
    String? tad_sep_score_prefix
    Int? threshold_comparisons
    Float? delta
    Int? min_boundary_distance
    Array[String] chromosomes
    Int? number_of_processors
  }
  command <<<
    hicFindTADs \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(correct_for_multiple_testing) then ("--correctForMultipleTesting " +  '"' + correct_for_multiple_testing + '"') else ""} \
      ~{if defined(min_depth) then ("--minDepth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(maxdepth) then ("--maxDepth " +  '"' + maxdepth + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(tad_sep_score_prefix) then ("--TAD_sep_score_prefix " +  '"' + tad_sep_score_prefix + '"') else ""} \
      ~{if defined(threshold_comparisons) then ("--thresholdComparisons " +  '"' + threshold_comparisons + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(min_boundary_distance) then ("--minBoundaryDistance " +  '"' + min_boundary_distance + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "Corrected Hi-C matrix to use for the computations."
    out_prefix: "File prefix to save the resulting files: 1.\\n<prefix>_tad_separation.bm The format of the output\\nfile is chrom start end TAD-sep1 TAD-sep2 TAD-sep3 ..\\netc. We call this format a bedgraph matrix and can be\\nplotted using `hicPlotTADs`. Each of the TAD-\\nseparation scores in the file corresponds to a\\ndifferent window length starting from --minDepth to\\n--maxDepth. 2. <prefix>_zscore_matrix.h5, the z-score\\nmatrix used for the computation of the TAD-separation\\nscore. 3. < prefix > _boundaries.bed, which contains\\nthe positions of boundaries. The genomic coordinates\\nin this file correspond to the resolution used. Thus,\\nfor Hi-C bins of 10.000bp the boundary position is\\n10.000bp long. For restriction fragment matrices the\\nboundary position varies depending on the fragment\\nlength at the boundary. 4. <prefix>_domains.bed\\ncontains the TADs positions. This is a non-overlapping\\nset of genomic positions. 5. <prefix>_boundaries.gff\\nSimilar to the boundaries bed file but with extra\\ninformation (p-value, delta). 6.\\n<prefix>_score.bedgraph file contains the TAD-\\nseparation score measured at each Hi-C bin coordinate.\\nIs useful to visualize in a genome browser. The delta\\nand p-value settings are saved as part of the name."
    correct_for_multiple_testing: "Select the bonferroni or false discovery rate for a\\nmultiple comparison. Bonferroni controls the family-\\nwise error rate (FWER) and needs a p-value. The false\\ndiscovery rate (FDR) controls the likelyhood of type I\\nerrors and needs a q-value. As a third option it is\\npossible to not use a multiple comparison method at\\nall."
    min_depth: "bp     Minimum window length (in bp) to be considered to the\\nleft and to the right of each Hi-C bin. This number\\nshould be at least 3 times as large as the bin size of\\nthe Hi-C matrix."
    maxdepth: "bp     Maximum window length to be considered to the left and\\nto the right of the cut point in bp. This number\\nshould around 6-10 times as large as the bin size of\\nthe Hi-C matrix."
    step: "bp         Step size when moving from --minDepth to --maxDepth.\\nNote, the step size grows exponentially as `minDeph +\\n(step * int(x)**1.5) for x in [0, 1, ...]` until it\\nreaches `maxDepth`. For example, selecting\\nstep=10,000, minDepth=20,000 and maxDepth=150,000 will\\ncompute TAD-scores for window sizes: 20,000, 30,000,\\n40,000, 70,000 and 100,000"
    tad_sep_score_prefix: "Sometimes it is useful to change some of the\\nparameters without recomputing the z-score matrix and\\nthe TAD-separation score. For this case, the prefix\\ncontaining the TAD separation score and the z-score\\nmatrix can be given. If this option is given, new\\nboundaries will be computed but the values of\\n--minDepth, --maxDepth and --step will not be used."
    threshold_comparisons: "P-value threshold for the Bonferroni correction /\\nq-value for FDR. The probability of a local minima to\\nbe a boundary is estimated by comparing the\\ndistribution (Wilcoxon ranksum) of the z-scores\\nbetween the left and right regions (diamond) at the\\nlocal minimum with the matrix z-scores for a diamond\\nat --minDepth to the left and a diamond --minDepth to\\nthe right. If --correctForMultipleTesting is 'None'\\nthe threshold is applied on the raw p-values without\\nany multiple testing correction. Set it to '1' if no\\nthreshold should be used."
    delta: "Minimum threshold of the difference between the TAD-\\nseparation score of a putative boundary and the mean\\nof the TAD-sep. score of surrounding bins. The delta\\nvalue reduces spurious boundaries that are shallow,\\nwhich usually occur at the center of large TADs when\\nthe TAD-sep. score is flat. Higher delta threshold\\nvalues produce more conservative boundary estimations.\\nBy default a value of 0.01 is used."
    min_boundary_distance: "Minimum distance between boundaries (in bp). This\\nparameter can be used to reduce spurious boundaries\\ncaused by noise."
    chromosomes: "Chromosomes and order in which the chromosomes should\\nbe plotted. This option overrides --region and\\n--region2."
    number_of_processors: "Number of processors to use"
  }
  output {
    File out_stdout = stdout()
  }
}