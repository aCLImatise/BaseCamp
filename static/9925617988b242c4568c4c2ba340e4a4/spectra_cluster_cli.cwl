class: CommandLineTool
id: spectra_cluster_cli.cwl
inputs:
- id: in_add_scores
  doc: "if set, the similarity\nscores of each spectrum\nto the cluster's\nconsensus\
    \ spectrum\nisadded to the output\nfile."
  type: File?
  inputBinding:
    prefix: -add_scores
- id: in_binary_directory
  doc: "path to the directory to\n(temporarily) store the\nbinary files. By default\n\
    a temporary directory is\nbeing created"
  type: File?
  inputBinding:
    prefix: -binary_directory
- id: in_fast_mode
  doc: "if this option is set the\n'fast mode' is enabled.\nIn this mode, the radical\n\
    peak filtering used for\nthe comparison function\nis already applied during\n\
    spectrum conversion.\nThereby, the clustering\nand consensus spectrum\nquality\
    \ is slightly\ndecreased but speed\nincreases 2-3 fold."
  type: boolean?
  inputBinding:
    prefix: -fast_mode
- id: in_filter
  doc: "adds a filter to be\napplied to the input\nspectrum. Available\nvalues are\n\
    ['immonium_ions',\n'mz_150', 'mz_200']"
  type: long?
  inputBinding:
    prefix: -filter
- id: in_fragment_tolerance
  doc: "fragment ion tolerance in\nm/z to use for fragment\npeak matching"
  type: boolean?
  inputBinding:
    prefix: -fragment_tolerance
- id: in_keep_binary_files
  doc: "if this options is set,\nthe binary files are not\ndeleted after clustering."
  type: boolean?
  inputBinding:
    prefix: -keep_binary_files
- id: in_major_peak_jobs
  doc: "number of threads to use\nfor major peak\nclustering."
  type: long?
  inputBinding:
    prefix: -major_peak_jobs
- id: in_only_identified
  doc: "if set, only identified\nspectra are considered\nfor clustering."
  type: boolean?
  inputBinding:
    prefix: -only_identified
- id: in_only_unidentified
  doc: "if set, only unidentified\nspectra are considered\nfor clustering."
  type: boolean?
  inputBinding:
    prefix: -only_unidentified
- id: in_output_path
  doc: "path to the outputfile.\nOutputfile must not\nexist."
  type: File?
  inputBinding:
    prefix: -output_path
- id: in_precursor_tolerance
  doc: "precursor tolerance\n(clustering window size)\nin m/z (default) or ppm\nused\
    \ during matching. The\nunit can be changed by\nsetting the\n-precursor_tolerance_unit\n\
    parameter"
  type: long?
  inputBinding:
    prefix: -precursor_tolerance
- id: in_precursor_tolerance_unit
  doc: "sets the precursor\ntolerance unit. Allowed\nvalues are \"mz\" and\n\"ppm\"\
    . Default is \"mz\"."
  type: string?
  inputBinding:
    prefix: -precursor_tolerance_unit
- id: in_remove_reporters
  doc: "remove reporter ion peaks\nin quantitation\nexperiments. Possible\nQUANTIATION\
    \ TYPES are\n'ITRAQ', 'TMT' and 'ALL'\n('TMT' and 'ITRAQ' peaks\nare removed."
  type: string?
  inputBinding:
    prefix: -remove_reporters
- id: in_reuse_binary_files
  doc: "if this option is set,\nthe binary files found in\nthe binary file directory\n\
    will be used for\nclustering."
  type: boolean?
  inputBinding:
    prefix: -reuse_binary_files
- id: in_rounds
  doc: "number of clustering\nrounds to use."
  type: long?
  inputBinding:
    prefix: -rounds
- id: in_threshold_end
  doc: (lowest) final clustering
  type: string?
  inputBinding:
    prefix: -threshold_end
- id: in_x_convert_cgf
  doc: "(Advanced option) It this\noption is set, the input\nfile in CGF format will\n\
    be converted to the\n.clustering file. No\nother processing will be\nperformed."
  type: boolean?
  inputBinding:
    prefix: -x_convert_cgf
- id: in_x_disable_mgf_comments
  doc: "(Advanced option) If set,\nMGF comment strings are\nNOT supported. This will\n\
    increase performance but\nonly works for MGF files\nthat do not contain any\n\
    comments"
  type: boolean?
  inputBinding:
    prefix: -x_disable_mgf_comments
- id: in_x_filter_peaks_mz
  doc: "(Advanced option) If this\noption is set, the top 10\npeaks per 100 m/z are\n\
    retained instead of the\ntop N peaks overall."
  type: boolean?
  inputBinding:
    prefix: -x_filter_peaks_mz
- id: in_x_learn_cdf
  doc: "(Experimental option)\nLearn the used cumulative\ndistribution function\n\
    directly from the\nprocessed data. This is\nonly recommended for\nhigh-resolution\
    \ data. The\nresult will be written to\nthe defined file."
  type: File?
  inputBinding:
    prefix: -x_learn_cdf
- id: in_x_load_cdf
  doc: "(Experimental option)\nLoads the cumulative\ndistribution function to\nuse\
    \ from the specified\nfile. These files can be\ncreated using the\nx_learn_cdf\
    \ parameter"
  type: File?
  inputBinding:
    prefix: -x_load_cdf
- id: in_x_merge_binary_files
  doc: "(Advanced option) If this\noption is set, the input\nfiles should be binary\n\
    result files from the\nclustering process. In\nthis mode, the\nspectra-cluster-cli\
    \ only\nmerges the binary files\nand creates the final\noutput file."
  type: boolean?
  inputBinding:
    prefix: -x_merge_binary_files
- id: in_x_min_adapt_comparisons
  doc: "(Experimental option)\nUses an adaptive function\nfor the minimum\ncomparisons\
    \ together with\na minimum number always\nto return."
  type: long?
  inputBinding:
    prefix: -x_min_adapt_comparisons
- id: in_x_min_comparisons
  doc: "(Experimental option)\nSets the minimum number\nof comparisons used to\ncalculate\
    \ the probability\nthat incorrect spectra\nare clustered."
  type: long?
  inputBinding:
    prefix: -x_min_comparisons
- id: in_x_min_consensus_peaks_to_keep
  doc: "(Advanced option) Sets\nthe minimum number of\npeaks to keep in a\nconsensus\
    \ spectrum. If\nthe consensus spectrum\ncontains fewer than these\npeaks, the\
    \ noise\nfiltering which retains N\npeaks per M m/z is not\nused but all peaks\
    \ are\nkept"
  type: long?
  inputBinding:
    prefix: -x_min_consensus_peaks_to_keep
- id: in_x_n_pre_filtered_peaks
  doc: "(Experimental option) Set\nthe number of highest\npeaks that are kept per\n\
    spectrum during loading.\n"
  type: long?
  inputBinding:
    prefix: -x_n_prefiltered_peaks
- id: in_spectra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cluster
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_add_scores
  doc: "if set, the similarity\nscores of each spectrum\nto the cluster's\nconsensus\
    \ spectrum\nisadded to the output\nfile."
  type: File?
  outputBinding:
    glob: $(inputs.in_add_scores)
- id: out_x_learn_cdf
  doc: "(Experimental option)\nLearn the used cumulative\ndistribution function\n\
    directly from the\nprocessed data. This is\nonly recommended for\nhigh-resolution\
    \ data. The\nresult will be written to\nthe defined file."
  type: File?
  outputBinding:
    glob: $(inputs.in_x_learn_cdf)
hints: []
cwlVersion: v1.1
baseCommand:
- spectra-cluster-cli
