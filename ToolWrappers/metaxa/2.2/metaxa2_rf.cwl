class: CommandLineTool
id: metaxa2_rf.cwl
inputs:
- id: in_metaxa_taxonomy_output
  doc: ': Metaxa taxonomy output file to process (*.taxonomy.txt)'
  type: File?
  inputBinding:
    prefix: -i
- id: in_base_name_output
  doc: ': Base for the name of output file(s)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_include_only_classifications
  doc: ": Include only classifications of this type(s)\n(several can be comma-separated),\
    \ default is all"
  type: string?
  inputBinding:
    prefix: -t
- id: in_reliability_cutoff_entries
  doc: ": Reliability cutoff, entries below cutoff will be classified as 'unknown',\
    \ default = 0"
  type: string?
  inputBinding:
    prefix: -r
- id: in_length_cutoff_bp
  doc: ": Length cutoff (in bp) of best hit, entries below cutoff will be classified\
    \ as 'unknown', default = 50"
  type: string?
  inputBinding:
    prefix: -l
- id: in_identity_cutoff_best
  doc: ": Identity cutoff of best hit (in percent), entries below cutoff will be classified\
    \ as 'unknown', default = 0"
  type: string?
  inputBinding:
    prefix: -d
- id: in_maximum_resolution_level
  doc: ': Maximum resolution level for taxonomic traversal, zero is unlimited, default
    = 0'
  type: string?
  inputBinding:
    prefix: -m
- id: in_minimum_resolution_level
  doc: ': Minimum resolution level for taxonomic traversal, starting at level 1, default
    = 1'
  type: string?
  inputBinding:
    prefix: -n
- id: in_investigate_only_level
  doc: ': Investigate only the last taxonomic level (in good cases species resolution),
    default is off (F)'
  type: string?
  inputBinding:
    prefix: -s
- id: in_treat_unclassified_entries
  doc: ': Treat unclassified entries as unknowns, default is off (F), which will use
    as much taxonomic information as possible'
  type: string?
  inputBinding:
    prefix: -u
- id: in_remove_na
  doc: ": Set sequence entries with no blast hits to 'Unknown', default is on (T)"
  type: string?
  inputBinding:
    prefix: --remove_na
- id: in_model
  doc: ": the model used for estimating species richness, 'all' will output data for\
    \ all three models, default = bengtsson-palme (b-p)"
  type: string?
  inputBinding:
    prefix: --model
- id: in_re_samples
  doc: ': number of resamplings, default = 1000'
  type: string?
  inputBinding:
    prefix: --resamples
- id: in_write
  doc: ': write interval in the output, default = 1'
  type: string?
  inputBinding:
    prefix: --write
- id: in_size
  doc: ': total number of sequences, by default this is set to the sum of all counts'
  type: string?
  inputBinding:
    prefix: --size
- id: in_scale
  doc: ': scales all the samples to have this number of sequences'
  type: string?
  inputBinding:
    prefix: --scale
- id: in_exclude_rows
  doc: ': a comma-separated list of rows to NOT include in the analysis'
  type: string?
  inputBinding:
    prefix: --exclude_rows
- id: in_ace_rare
  doc: ': the rare taxa cutoff used for the ACE estimator, default = 10'
  type: string?
  inputBinding:
    prefix: --ace_rare
- id: in_summary
  doc: ': Summary of results output, on (T) by default'
  type: string?
  inputBinding:
    prefix: --summary
- id: in_lists
  doc: ': Output lists of counts for different taxa, one for each traversal level,
    on (T) by default'
  type: string?
  inputBinding:
    prefix: --lists
- id: in_separate
  doc: ': Outputs rarefaction analysis results separately for the different origins,
    on (T) by default'
  type: string?
  inputBinding:
    prefix: --separate
- id: in_unknown
  doc: ': Outputs a list of entries designated as unknowns, with their statistics,
    off (F) by default'
  type: string?
  inputBinding:
    prefix: --unknown
- id: in_sampled
  doc: ': Output lists of the number of individuals sampled for different taxa, one
    for each traversal level, off (F) by default'
  type: string?
  inputBinding:
    prefix: --sampled
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
- id: out_metaxa_taxonomy_output
  doc: ': Metaxa taxonomy output file to process (*.taxonomy.txt)'
  type: File?
  outputBinding:
    glob: $(inputs.in_metaxa_taxonomy_output)
- id: out_base_name_output
  doc: ': Base for the name of output file(s)'
  type: File?
  outputBinding:
    glob: $(inputs.in_base_name_output)
hints: []
cwlVersion: v1.1
baseCommand:
- metaxa2_rf
