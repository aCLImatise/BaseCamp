class: CommandLineTool
id: idr.cwl
inputs:
- id: samples
  doc: SAMPLES, -s SAMPLES SAMPLES Files containing peaks and scores.
  type: string
  inputBinding:
    prefix: --samples
- id: peak_list
  doc: If provided, all peaks will be taken from this file.
  type: string
  inputBinding:
    prefix: --peak-list
- id: input_file_type
  doc: File type of --samples and --peak-list.
  type: string
  inputBinding:
    prefix: --input-file-type
- id: rank
  doc: 'Which column to use to rank peaks.       Options: signal.value p.value q.value
    columnIndex Defaults: narrowPeak/broadPeak: signal.value bed: score'
  type: string
  inputBinding:
    prefix: --rank
- id: output_file
  doc: 'File to write output to. Default: idrValues.txt'
  type: string
  inputBinding:
    prefix: --output-file
- id: output_file_type
  doc: Output file type. Defaults to input file type when available, otherwise bed.
  type: string
  inputBinding:
    prefix: --output-file-type
- id: log_output_file
  doc: 'File to write output to. Default: stderr'
  type: string
  inputBinding:
    prefix: --log-output-file
- id: idr_threshold
  doc: 'Only return peaks with a global idr threshold below this value. Default: report
    all peaks'
  type: string
  inputBinding:
    prefix: --idr-threshold
- id: soft_idr_threshold
  doc: 'Report statistics for peaks with a global idr below this value but return
    all peaks with an idr below --idr. Default: 0.05'
  type: string
  inputBinding:
    prefix: --soft-idr-threshold
- id: use_old_output_format
  doc: Use old output format.
  type: boolean
  inputBinding:
    prefix: --use-old-output-format
- id: plot
  doc: Plot the results to [OFNAME].png
  type: boolean
  inputBinding:
    prefix: --plot
- id: use_nonoverlapping_peaks
  doc: Use peaks without an overlapping match and set the value to 0.
  type: boolean
  inputBinding:
    prefix: --use-nonoverlapping-peaks
- id: peak_merge_method
  doc: "Which method to use for merging peaks. Default: 'sum' for signal/score/column\
    \ indexes, 'min' for p/q-value."
  type: string
  inputBinding:
    prefix: --peak-merge-method
- id: initial_mu
  doc: 'Initial value of mu. Default: 0.10'
  type: string
  inputBinding:
    prefix: --initial-mu
- id: initial_sigma
  doc: 'Initial value of sigma. Default: 1.00'
  type: string
  inputBinding:
    prefix: --initial-sigma
- id: initial_rho
  doc: 'Initial value of rho. Default: 0.20'
  type: string
  inputBinding:
    prefix: --initial-rho
- id: initial_mix_param
  doc: 'Initial value of the mixture params. Default: 0.50'
  type: string
  inputBinding:
    prefix: --initial-mix-param
- id: fix_mu
  doc: Fix mu to the starting point and do not let it vary.
  type: boolean
  inputBinding:
    prefix: --fix-mu
- id: fix_sigma
  doc: Fix sigma to the starting point and do not let it vary.
  type: boolean
  inputBinding:
    prefix: --fix-sigma
- id: dont_filter_peaks_below_noise_mean
  doc: Allow signal points that are below the noise mean (should only be used if you
    know what you are doing).
  type: boolean
  inputBinding:
    prefix: --dont-filter-peaks-below-noise-mean
- id: use_best_multi_summit_idr
  doc: Set the IDR value for a group of multi summit peaks (a group of peaks with
    the same chr/start/stop but different summits) to the best value across all of
    these peaks. This is a work around for peak callers that don't do a good job splitting
    scores across multi summit peaks (e.g. MACS). If set in conjunction with --plot
    two plots will be created - one with alternate summits and one without.  Use this
    option with care.
  type: boolean
  inputBinding:
    prefix: --use-best-multisummit-IDR
- id: allow_negative_scores
  doc: Allow negative values for scores. (should only be used if you know what you
    are doing)
  type: boolean
  inputBinding:
    prefix: --allow-negative-scores
- id: random_seed
  doc: 'The random seed value (sor braking ties). Default: 0'
  type: string
  inputBinding:
    prefix: --random-seed
- id: max_iter
  doc: 'The maximum number of optimization iterations. Default: 3000'
  type: long
  inputBinding:
    prefix: --max-iter
- id: convergence_eps
  doc: 'The maximum change in parameter value changes for convergence. Default: 1.00e-06'
  type: string
  inputBinding:
    prefix: --convergence-eps
- id: only_merge_peaks
  doc: Only return the merged peak list.
  type: boolean
  inputBinding:
    prefix: --only-merge-peaks
- id: verbose
  doc: Print out additional debug information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Don't print any status messages
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- idr
