class: CommandLineTool
id: augur_filter.cwl
inputs:
- id: in_sequences
  doc: 'sequences in fasta or VCF format (default: None)'
  type: string
  inputBinding:
    prefix: --sequences
- id: in_metadata
  doc: 'metadata associated with sequences (default: None)'
  type: string
  inputBinding:
    prefix: --metadata
- id: in_min_date
  doc: "minimal cutoff for date; may be specified as an Augur-\nstyle numeric date\
    \ (with the year as the integer part)\nor YYYY-MM-DD (default: None)"
  type: long
  inputBinding:
    prefix: --min-date
- id: in_max_date
  doc: "maximal cutoff for date; may be specified as an Augur-\nstyle numeric date\
    \ (with the year as the integer part)\nor YYYY-MM-DD (default: None)"
  type: long
  inputBinding:
    prefix: --max-date
- id: in_min_length
  doc: 'minimal length of the sequences (default: None)'
  type: long
  inputBinding:
    prefix: --min-length
- id: in_non_nucleotide
  doc: "exclude sequences that contain illegal characters\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --non-nucleotide
- id: in_exclude
  doc: "file with list of strains that are to be excluded\n(default: None)"
  type: File
  inputBinding:
    prefix: --exclude
- id: in_include
  doc: "file with list of strains that are to be included\nregardless of priorities\
    \ or subsampling (default:\nNone)"
  type: File
  inputBinding:
    prefix: --include
- id: in_priority
  doc: "file with list of priority scores for sequences\n(strain priority) (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --priority
- id: in_sequences_per_group
  doc: "subsample to no more than this number of sequences per\ncategory (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --sequences-per-group
- id: in_group_by
  doc: "categories with respect to subsample; two virtual\nfields, \"month\" and \"\
    year\", are supported if they\ndon't already exist as real fields but a \"date\"\
    \ field\ndoes exist (default: None)"
  type: string[]
  inputBinding:
    prefix: --group-by
- id: in_subsample_seed
  doc: "random number generator seed to allow reproducible\nsub-sampling (with same\
    \ input data). Can be number or\nstring. (default: None)"
  type: long
  inputBinding:
    prefix: --subsample-seed
- id: in_exclude_where
  doc: "Exclude samples matching these conditions. Ex:\n\"host=rat\" or \"host!=rat\"\
    . Multiple values are\nprocessed as OR (matching any of those specified will\n\
    be excluded), not AND (default: None)"
  type: string[]
  inputBinding:
    prefix: --exclude-where
- id: in_include_where
  doc: "Include samples with these values. ex: host=rat.\nMultiple values are processed\
    \ as OR (having any of\nthose specified will be included), not AND. This rule\n\
    is applied last and ensures any sequences matching\nthese rules will be included.\
    \ (default: None)"
  type: string[]
  inputBinding:
    prefix: --include-where
- id: in_query
  doc: "Filter samples by attribute. Uses Pandas Dataframe\nquerying, see https://pandas.pydata.org/pandas-\n\
    docs/stable/user_guide/indexing.html#indexing-query\nfor syntax. (default: None)"
  type: string
  inputBinding:
    prefix: --query
- id: in_output
  doc: "output file (default: None)\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file (default: None)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- augur
- filter
