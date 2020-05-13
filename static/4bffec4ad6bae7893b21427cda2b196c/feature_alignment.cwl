class: CommandLineTool
id: feature_alignment.py.cwl
inputs:
- id: in
  doc: A list of mProphet output files containing all peakgroups (use quotes around
    the filenames)
  type: string[]
  inputBinding:
    prefix: --in
- id: file_format
  doc: Input file format (openswath, mprophet or peakview)
  type: boolean
  inputBinding:
    prefix: --file_format
- id: out
  doc: Output file with filtered peakgroups
  type: string
  inputBinding:
    prefix: --out
- id: out_matrix
  doc: Matrix containing one peak group per row (supports .csv, .tsv or .xlsx)
  type: boolean
  inputBinding:
    prefix: --out_matrix
- id: out_ids
  doc: Id file only containing the ids
  type: boolean
  inputBinding:
    prefix: --out_ids
- id: out_meta
  doc: Outfile containing meta information
  type: boolean
  inputBinding:
    prefix: --out_meta
- id: fdr_cut_off
  doc: 0.01     Fixed FDR cutoff used for seeding (only assays where at least one
    peakgroup in one run is below this cutoff will be included in the result), see
    also target_fdr for a non-fixed cutoff
  type: boolean
  inputBinding:
    prefix: --fdr_cutoff
- id: target_fdr
  doc: 0.01     If parameter estimation is used, which target FDR should be optimized
    for. If set to lower than 0, parameter estimation is turned off.
  type: boolean
  inputBinding:
    prefix: --target_fdr
- id: max_fdr_quality
  doc: -1  Extension m-score score cutoff, peakgroups of this quality will still be
    considered for alignment during extension
  type: boolean
  inputBinding:
    prefix: --max_fdr_quality
- id: max_rt_diff
  doc: 30      Maximal difference in RT (in seconds) for two aligned features
  type: boolean
  inputBinding:
    prefix: --max_rt_diff
- id: iso_max_rt_diff
  doc: 30  Maximal difference in RT (in seconds) for two isotopic channels in the
    same run
  type: boolean
  inputBinding:
    prefix: --iso_max_rt_diff
- id: frac_selected
  doc: 0     Do not write peakgroup if selected in less than this fraction of runs
    (range 0 to 1)
  type: boolean
  inputBinding:
    prefix: --frac_selected
- id: method
  doc: Method to use for the clustering (best_overall, best_cluster_score or global_best_cluster_score,
    global_best_overall, LocalMST, LocalMSTAllCluster).
  type: string
  inputBinding:
    prefix: --method
- id: verbosity
  doc: 0         Verbosity (0 = little)
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: matrix_output_method
  doc: Which columns are written besides Intensity (none, RT, score, source or full)
  type: boolean
  inputBinding:
    prefix: --matrix_output_method
- id: realign_method
  doc: RT alignment method (diRT, linear, splineR, splineR_external, splinePy, lowess,
    lowess_biostats, lowess_statsmodels, lowess_cython, nonCVSpline, CVSpline, Earth,
    WeightedNearestNeighbour, SmoothLLDMedian, None)
  type: string
  inputBinding:
    prefix: --realign_method
- id: force
  doc: Force alignment
  type: boolean
  inputBinding:
    prefix: --force
- id: mst
  doc: :useRTCorrection True Use aligned peakgroup RT to continue threading
  type: boolean
  inputBinding:
    prefix: --mst
- id: mst
  doc: :Stdev_multiplier -1.0 How many standard deviations the peakgroup can deviate
    in RT during the alignment (if less than max_rt_diff, then max_rt_diff is used)
  type: boolean
  inputBinding:
    prefix: --mst
- id: mst
  doc: :useLocalStdev False Use local standard deviation of the alignment
  type: boolean
  inputBinding:
    prefix: --mst
- id: mst
  doc: :useReference False Use a reference-based tree for alignment
  type: boolean
  inputBinding:
    prefix: --mst
- id: d_score_cut_off
  doc: 1.96  Discard all peakgroups below this d-score
  type: boolean
  inputBinding:
    prefix: --dscore_cutoff
- id: nr_high_conf_exp
  doc: 1  Number of experiments in which the peptide needs to be identified with confidence
    above fdr_cutoff
  type: boolean
  inputBinding:
    prefix: --nr_high_conf_exp
- id: read_method
  doc: Read full or minimal transition groups (cminimal,minimal,full)
  type: long
  inputBinding:
    prefix: --readmethod
- id: tmpdir
  doc: Temporary directory
  type: string
  inputBinding:
    prefix: --tmpdir
- id: alignment_score
  doc: 0.0001 Minimal score needed for a feature to be considered for alignment between
    runs
  type: boolean
  inputBinding:
    prefix: --alignment_score
- id: realign_runs
  doc: Deprecated option (equals '--realign_method external_r')
  type: boolean
  inputBinding:
    prefix: --realign_runs
- id: use_external_r
  doc: Deprecated option (equals '--realign_method external_r')
  type: boolean
  inputBinding:
    prefix: --use_external_r
outputs: []
cwlVersion: v1.1
baseCommand:
- feature_alignment.py
