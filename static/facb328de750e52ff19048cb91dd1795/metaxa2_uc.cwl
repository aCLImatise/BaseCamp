class: CommandLineTool
id: metaxa2_uc.cwl
inputs:
- id: in_input_count_table
  doc: ': Input count table (e.g. derived from metaxa2_dc)'
  type: string?
  inputBinding:
    prefix: -i
- id: in_base_names_output
  doc: ': Base for the names of output file(s)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_file_string_describing
  doc: ": A file or string describing the sample group division,\nor 'auto' if the\
    \ groups should be guessed from sample names,\nor 'none' if all samples should\
    \ be treated individually,\nor 'all' if all samples should be treated as they\
    \ come from the same group, default = 'all'"
  type: string?
  inputBinding:
    prefix: -g
- id: in_number_resampling_rounds
  doc: ': Number of resampling rounds for each sample, default = 10000'
  type: string?
  inputBinding:
    prefix: -r
- id: in_number_entries_sampled
  doc: ": Number of entries sampled in each resampling round for each sample, 'min'\
    \ will set this number to the number of entries in the smallest sample, default\
    \ = 1000"
  type: string?
  inputBinding:
    prefix: -s
- id: in_sample_compare_leave
  doc: ": Sample to compare to, leave blank to compare to all samples, use 'groups'\
    \ to compare groups instead of samples, default is blank"
  type: string?
  inputBinding:
    prefix: -c
- id: in_withinsample_variation_cutoff
  doc: ': Within-sample variation cutoff to compare to (proportion of all resampling
    values included), default = 0.99'
  type: string?
  inputBinding:
    prefix: -w
- id: in_resampling_model_use
  doc: ": Resampling model to use, default = model\nEmpirical uses the empirical distribution\
    \ from each sample within the group, which gives large variance (not statistical\
    \ good-practice)\nAverage assumes that all samples are drawn directly from the\
    \ group average, which gives very small variance (unrealistic)\nModel assumes\
    \ a model that take sample variation into account when drawing from the group\
    \ average, which gives very variance (more realistic)"
  type: string?
  inputBinding:
    prefix: -m
- id: in_distancedissimilarity_measure_use
  doc: ': Distance/dissimilarity measure to use when comparing samples and groups,
    default = bray'
  type: string?
  inputBinding:
    prefix: -d
- id: in_binary
  doc: ': Use presence/absence for distance/dissimilarity rather than taking abundances
    into account, off (F) by default'
  type: string?
  inputBinding:
    prefix: --binary
- id: in_filter
  doc: ': Filter out abundance values below this cutoff, default = 0'
  type: string?
  inputBinding:
    prefix: --filter
- id: in_summary
  doc: ': Outputs a readable summary file of the results, on (T) by default'
  type: string?
  inputBinding:
    prefix: --summary
- id: in_table
  doc: ': Outputs a tab-separated table of the results, off (F) by default'
  type: string?
  inputBinding:
    prefix: --table
- id: in_matrix
  doc: ': Outputs a results in a matrix format, off (F) by default'
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_resampling_table
  doc: ': Outputs the resampling table (can be huge), off (F) by default'
  type: string?
  inputBinding:
    prefix: --resampling_table
- id: in_help
  doc: ': displays this help message'
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_bugs
  doc: ': displays the bug fixes and known bugs in this version of Metaxa'
  type: boolean?
  inputBinding:
    prefix: --bugs
- id: in_license
  doc: ': displays licensing information'
  type: boolean?
  inputBinding:
    prefix: --license
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_base_names_output
  doc: ': Base for the names of output file(s)'
  type: File?
  outputBinding:
    glob: $(inputs.in_base_names_output)
hints: []
cwlVersion: v1.1
baseCommand:
- metaxa2_uc
