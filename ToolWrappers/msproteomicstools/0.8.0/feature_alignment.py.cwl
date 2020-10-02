class: CommandLineTool
id: feature_alignment.py.cwl
inputs:
- id: in_in
  doc: "A list of mProphet output files containing all\npeakgroups (use quotes around\
    \ the filenames)"
  type: string[]
  inputBinding:
    prefix: --in
- id: in_file_format
  doc: Input file format (openswath, mprophet or peakview)
  type: boolean
  inputBinding:
    prefix: --file_format
- id: in_out
  doc: Output file with filtered peakgroups
  type: File
  inputBinding:
    prefix: --out
- id: in_out_matrix
  doc: "Matrix containing one peak group per row (supports\n.csv, .tsv or .xlsx)"
  type: boolean
  inputBinding:
    prefix: --out_matrix
- id: in_out_ids
  doc: Id file only containing the ids
  type: boolean
  inputBinding:
    prefix: --out_ids
- id: in_out_meta
  doc: Outfile containing meta information
  type: boolean
  inputBinding:
    prefix: --out_meta
- id: in_fdr_cut_off
  doc: "Fixed FDR cutoff used for seeding (only assays where\nat least one peakgroup\
    \ in one run is below this cutoff\nwill be included in the result), see also target_fdr\n\
    for a non-fixed cutoff"
  type: long
  inputBinding:
    prefix: --fdr_cutoff
- id: in_target_fdr
  doc: "If parameter estimation is used, which target FDR\nshould be optimized for.\
    \ If set to lower than 0,\nparameter estimation is turned off."
  type: long
  inputBinding:
    prefix: --target_fdr
- id: in_max_fdr_quality
  doc: "Extension m-score score cutoff, peakgroups of this\nquality will still be\
    \ considered for alignment during\nextension"
  type: boolean
  inputBinding:
    prefix: --max_fdr_quality
- id: in_max_rt_diff
  doc: Maximal difference in RT (in seconds) for two aligned
  type: long
  inputBinding:
    prefix: --max_rt_diff
- id: in_frac_selected
  doc: "Do not write peakgroup if selected in less than this\nfraction of runs (range\
    \ 0 to 1)"
  type: long
  inputBinding:
    prefix: --frac_selected
- id: in_method
  doc: "Method to use for the clustering (best_overall,\nbest_cluster_score or global_best_cluster_score,\n\
    global_best_overall, LocalMST, LocalMSTAllCluster)."
  type: string
  inputBinding:
    prefix: --method
- id: in_verbosity
  doc: Verbosity (0 = little)
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_matrix_output_method
  doc: "Which columns are written besides Intensity (none, RT,\nscore, source or full)"
  type: boolean
  inputBinding:
    prefix: --matrix_output_method
- id: in_realign_method
  doc: "RT alignment method (diRT, linear, splineR,\nsplineR_external, splinePy, lowess,\
    \ lowess_biostats,\nlowess_statsmodels, lowess_cython, nonCVSpline,\nCVSpline,\
    \ Earth, WeightedNearestNeighbour,\nSmoothLLDMedian, None)"
  type: string
  inputBinding:
    prefix: --realign_method
- id: in_force
  doc: Force alignment
  type: boolean
  inputBinding:
    prefix: --force
- id: in_d_score_cut_off
  doc: Discard all peakgroups below this d-score
  type: long
  inputBinding:
    prefix: --dscore_cutoff
- id: in_nr_high_conf_exp
  doc: Number of experiments in which the peptide needs to be
  type: long
  inputBinding:
    prefix: --nr_high_conf_exp
- id: in_read_method
  doc: Read full or minimal transition groups
  type: string
  inputBinding:
    prefix: --readmethod
- id: in_realign_runs
  doc: Deprecated option (equals '--realign_method
  type: boolean
  inputBinding:
    prefix: --realign_runs
- id: in_use_external_r
  doc: Deprecated option (equals '--realign_method
  type: boolean
  inputBinding:
    prefix: --use_external_r
- id: in_features
  doc: --iso_max_rt_diff 30  Maximal difference in RT (in seconds) for two isotopic
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file with filtered peakgroups
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- feature_alignment.py
