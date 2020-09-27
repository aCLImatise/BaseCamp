class: CommandLineTool
id: idr.cwl
inputs:
- id: in_samples_samples_samplesfiles
  doc: "SAMPLES, -s SAMPLES SAMPLES\nFiles containing peaks and scores."
  type: string
  inputBinding:
    prefix: --samples
- id: in_peak_list
  doc: If provided, all peaks will be taken from this file.
  type: File
  inputBinding:
    prefix: --peak-list
- id: in_input_file_type
  doc: File type of --samples and --peak-list.
  type: string
  inputBinding:
    prefix: --input-file-type
- id: in_rank
  doc: "Which column to use to rank peaks.\nOptions: signal.value p.value q.value\
    \ columnIndex\nDefaults:\nnarrowPeak/broadPeak: signal.value\nbed: score"
  type: string
  inputBinding:
    prefix: --rank
- id: in_output_file
  doc: "File to write output to.\nDefault: idrValues.txt"
  type: File
  inputBinding:
    prefix: --output-file
- id: in_output_file_type
  doc: Output file type. Defaults to input file type when available, otherwise bed.
  type: File
  inputBinding:
    prefix: --output-file-type
- id: in_log_output_file
  doc: 'File to write output to. Default: stderr'
  type: File
  inputBinding:
    prefix: --log-output-file
- id: in_idr_threshold
  doc: "Only return peaks with a global idr threshold below this value.\nDefault:\
    \ report all peaks"
  type: string
  inputBinding:
    prefix: --idr-threshold
- id: in_soft_idr_threshold
  doc: "Report statistics for peaks with a global idr below this value but return\
    \ all peaks with an idr below --idr.\nDefault: 0.05"
  type: double
  inputBinding:
    prefix: --soft-idr-threshold
- id: in_use_old_output_format
  doc: Use old output format.
  type: boolean
  inputBinding:
    prefix: --use-old-output-format
- id: in_plot
  doc: Plot the results to [OFNAME].png
  type: boolean
  inputBinding:
    prefix: --plot
- id: in_use_nonoverlapping_peaks
  doc: Use peaks without an overlapping match and set the value to 0.
  type: boolean
  inputBinding:
    prefix: --use-nonoverlapping-peaks
- id: in_peak_merge_method
  doc: "Which method to use for merging peaks.\nDefault: 'sum' for signal/score/column\
    \ indexes, 'min' for p/q-value."
  type: string
  inputBinding:
    prefix: --peak-merge-method
- id: in_initial_mu
  doc: 'Initial value of mu. Default: 0.10'
  type: double
  inputBinding:
    prefix: --initial-mu
- id: in_initial_sigma
  doc: 'Initial value of sigma. Default: 1.00'
  type: double
  inputBinding:
    prefix: --initial-sigma
- id: in_initial_rho
  doc: 'Initial value of rho. Default: 0.20'
  type: double
  inputBinding:
    prefix: --initial-rho
- id: in_initial_mix_param
  doc: 'Initial value of the mixture params. Default: 0.50'
  type: double
  inputBinding:
    prefix: --initial-mix-param
- id: in_fix_mu
  doc: Fix mu to the starting point and do not let it vary.
  type: boolean
  inputBinding:
    prefix: --fix-mu
- id: in_fix_sigma
  doc: Fix sigma to the starting point and do not let it vary.
  type: boolean
  inputBinding:
    prefix: --fix-sigma
- id: in_dont_filter_peaks_below_noise_mean
  doc: Allow signal points that are below the noise mean (should only be used if you
    know what you are doing).
  type: boolean
  inputBinding:
    prefix: --dont-filter-peaks-below-noise-mean
- id: in_use_best_multi_summit_idr
  doc: Set the IDR value for a group of multi summit peaks (a group of peaks with
    the same chr/start/stop but different summits) to the best value across all of
    these peaks. This is a work around for peak callers that don't do a good job splitting
    scores across multi summit peaks (e.g. MACS). If set in conjunction with --plot
    two plots will be created - one with alternate summits and one without.  Use this
    option with care.
  type: boolean
  inputBinding:
    prefix: --use-best-multisummit-IDR
- id: in_allow_negative_scores
  doc: Allow negative values for scores. (should only be used if you know what you
    are doing)
  type: boolean
  inputBinding:
    prefix: --allow-negative-scores
- id: in_random_seed
  doc: 'The random seed value (sor braking ties). Default: 0'
  type: long
  inputBinding:
    prefix: --random-seed
- id: in_max_iter
  doc: 'The maximum number of optimization iterations. Default: 3000'
  type: long
  inputBinding:
    prefix: --max-iter
- id: in_convergence_eps
  doc: 'The maximum change in parameter value changes for convergence. Default: 1.00e-06'
  type: double
  inputBinding:
    prefix: --convergence-eps
- id: in_only_merge_peaks
  doc: Only return the merged peak list.
  type: boolean
  inputBinding:
    prefix: --only-merge-peaks
- id: in_verbose
  doc: Print out additional debug information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Don't print any status messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_28
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "File to write output to.\nDefault: idrValues.txt"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_file_type
  doc: Output file type. Defaults to input file type when available, otherwise bed.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_type)
- id: out_log_output_file
  doc: 'File to write output to. Default: stderr'
  type: File
  outputBinding:
    glob: $(inputs.in_log_output_file)
cwlVersion: v1.1
baseCommand:
- idr
