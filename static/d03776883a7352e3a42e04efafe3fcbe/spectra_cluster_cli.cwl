class: CommandLineTool
id: spectra_cluster_cli.cwl
inputs:
- id: add_scores
  doc: if set, the similarity scores of each spectrum to the cluster's consensus spectrum
    isadded to the output file.
  type: boolean
  inputBinding:
    prefix: -add_scores
- id: binary_directory
  doc: path to the directory to (temporarily) store the binary files. By default a
    temporary directory is being created
  type: string
  inputBinding:
    prefix: -binary_directory
- id: fast_mode
  doc: if this option is set the 'fast mode' is enabled. In this mode, the radical
    peak filtering used for the comparison function is already applied during spectrum
    conversion. Thereby, the clustering and consensus spectrum quality is slightly
    decreased but speed increases 2-3 fold.
  type: boolean
  inputBinding:
    prefix: -fast_mode
- id: filter
  doc: adds a filter to be applied to the input spectrum. Available values are ['immonium_ions',
    'mz_150', 'mz_200']
  type: string
  inputBinding:
    prefix: -filter
- id: fragment_tolerance
  doc: fragment ion tolerance in m/z to use for fragment peak matching
  type: boolean
  inputBinding:
    prefix: -fragment_tolerance
- id: keep_binary_files
  doc: if this options is set, the binary files are not deleted after clustering.
  type: boolean
  inputBinding:
    prefix: -keep_binary_files
- id: major_peak_jobs
  doc: number of threads to use for major peak clustering.
  type: string
  inputBinding:
    prefix: -major_peak_jobs
- id: only_identified
  doc: if set, only identified spectra are considered for clustering.
  type: boolean
  inputBinding:
    prefix: -only_identified
- id: only_unidentified
  doc: if set, only unidentified spectra are considered for clustering.
  type: boolean
  inputBinding:
    prefix: -only_unidentified
- id: output_path
  doc: path to the outputfile. Outputfile must not exist.
  type: string
  inputBinding:
    prefix: -output_path
- id: precursor_tolerance
  doc: precursor tolerance (clustering window size) in m/z (default) or ppm used during
    matching. The unit can be changed by setting the -precursor_tolerance_unit parameter
  type: string
  inputBinding:
    prefix: -precursor_tolerance
- id: precursor_tolerance_unit
  doc: sets the precursor tolerance unit. Allowed values are "mz" and "ppm". Default
    is "mz".
  type: string
  inputBinding:
    prefix: -precursor_tolerance_unit
- id: remove_reporters
  doc: remove reporter ion peaks in quantitation experiments. Possible QUANTIATION
    TYPES are 'ITRAQ', 'TMT' and 'ALL' ('TMT' and 'ITRAQ' peaks are removed.
  type: string
  inputBinding:
    prefix: -remove_reporters
- id: reuse_binary_files
  doc: if this option is set, the binary files found in the binary file directory
    will be used for clustering.
  type: boolean
  inputBinding:
    prefix: -reuse_binary_files
- id: rounds
  doc: number of clustering rounds to use.
  type: string
  inputBinding:
    prefix: -rounds
- id: threshold_end
  doc: (lowest) final clustering threshold
  type: string
  inputBinding:
    prefix: -threshold_end
- id: threshold_start
  doc: (highest) starting threshold
  type: string
  inputBinding:
    prefix: -threshold_start
- id: verbose
  doc: if set additional status information is printed.
  type: boolean
  inputBinding:
    prefix: -verbose
- id: x_convert_cgf
  doc: (Advanced option) It this option is set, the input file in CGF format will
    be converted to the .clustering file. No other processing will be performed.
  type: boolean
  inputBinding:
    prefix: -x_convert_cgf
- id: x_disable_mgf_comments
  doc: (Advanced option) If set, MGF comment strings are NOT supported. This will
    increase performance but only works for MGF files that do not contain any comments
  type: boolean
  inputBinding:
    prefix: -x_disable_mgf_comments
- id: x_filter_peaks_mz
  doc: (Advanced option) If this option is set, the top 10 peaks per 100 m/z are retained
    instead of the top N peaks overall.
  type: boolean
  inputBinding:
    prefix: -x_filter_peaks_mz
- id: x_learn_cdf
  doc: (Experimental option) Learn the used cumulative distribution function directly
    from the processed data. This is only recommended for high-resolution data. The
    result will be written to the defined file.
  type: string
  inputBinding:
    prefix: -x_learn_cdf
- id: x_load_cdf
  doc: (Experimental option) Loads the cumulative distribution function to use from
    the specified file. These files can be created using the x_learn_cdf parameter
  type: string
  inputBinding:
    prefix: -x_load_cdf
- id: x_merge_binary_files
  doc: (Advanced option) If this option is set, the input files should be binary result
    files from the clustering process. In this mode, the spectra-cluster-cli only
    merges the binary files and creates the final output file.
  type: boolean
  inputBinding:
    prefix: -x_merge_binary_files
- id: x_min_adapt_comparisons
  doc: (Experimental option) Uses an adaptive function for the minimum comparisons
    together with a minimum number always to return.
  type: string
  inputBinding:
    prefix: -x_min_adapt_comparisons
- id: x_min_comparisons
  doc: (Experimental option) Sets the minimum number of comparisons used to calculate
    the probability that incorrect spectra are clustered.
  type: string
  inputBinding:
    prefix: -x_min_comparisons
- id: x_min_consensus_peaks_to_keep
  doc: (Advanced option) Sets the minimum number of peaks to keep in a consensus spectrum.
    If the consensus spectrum contains fewer than these peaks, the noise filtering
    which retains N peaks per M m/z is not used but all peaks are kept
  type: string
  inputBinding:
    prefix: -x_min_consensus_peaks_to_keep
- id: x_n_pre_filtered_peaks
  doc: (Experimental option) Set the number of highest peaks that are kept per spectrum
    during loading.
  type: string
  inputBinding:
    prefix: -x_n_prefiltered_peaks
outputs: []
cwlVersion: v1.1
baseCommand:
- spectra-cluster-cli
