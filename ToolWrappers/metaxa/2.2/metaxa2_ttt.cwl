class: CommandLineTool
id: metaxa2_ttt.cwl
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
- id: in_remove_na
  doc: ": Set sequence entries with no blast hits to 'Unknown', default is on (T)"
  type: string?
  inputBinding:
    prefix: --remove_na
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
  doc: ': Outputs the taxonomy file, but separated for the different origins, off
    (F) by default'
  type: string?
  inputBinding:
    prefix: --separate
- id: in_unknown
  doc: ': Outputs a list of entries designated as unknowns, with their statistics,
    off (F) by default'
  type: string?
  inputBinding:
    prefix: --unknown
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
- metaxa2_ttt
