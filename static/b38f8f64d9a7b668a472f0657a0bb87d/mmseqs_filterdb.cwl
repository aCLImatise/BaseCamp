class: CommandLineTool
id: mmseqs_filterdb.cwl
inputs:
- id: add_self_matches
  doc: false           artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: filter_column
  doc: '1               column                                                      '
  type: boolean
  inputBinding:
    prefix: --filter-column
- id: column_to_take
  doc: '-1              column to take in join mode. If -1, the whole line is taken '
  type: boolean
  inputBinding:
    prefix: --column-to-take
- id: filter_regex
  doc: '^.*$            regex to select column (example float: [0-9]*(.[0-9]+)? int:[1-9]{1}[0-9])'
  type: boolean
  inputBinding:
    prefix: --filter-regex
- id: positive_filter
  doc: true            used in conjunction with --filter-file. If true, out  = in
    \intersect filter ; if false, out = in - filter
  type: boolean
  inputBinding:
    prefix: --positive-filter
- id: filter_file
  doc: 'specify a file that contains the filtering elements         '
  type: boolean
  inputBinding:
    prefix: --filter-file
- id: beats_first
  doc: 'false           Filter by comparing each entry to the first entry.          '
  type: boolean
  inputBinding:
    prefix: --beats-first
- id: mapping_file
  doc: specify a file that translates the keys of a DB to new keys, TSV format
  type: boolean
  inputBinding:
    prefix: --mapping-file
- id: trim_to_one_column
  doc: 'false           Output only the column specified by --filter-column.        '
  type: boolean
  inputBinding:
    prefix: --trim-to-one-column
- id: extract_lines
  doc: '0               extract n lines of each entry.                              '
  type: boolean
  inputBinding:
    prefix: --extract-lines
- id: comparison_operator
  doc: Filter by comparing each entry row numerically by using the le) less-than-equal,
    ge) greater-than-equal or e) equal operator.
  type: boolean
  inputBinding:
    prefix: --comparison-operator
- id: comparison_value
  doc: '0.000           Filter by comparing each entry to this value.               '
  type: boolean
  inputBinding:
    prefix: --comparison-value
- id: sort_entries
  doc: 0               Sort column set by --filter-column, by 0) no sorting, 1) increasing,  2)
    decreasing or 3) random shuffle.
  type: boolean
  inputBinding:
    prefix: --sort-entries
- id: join_db
  doc: Join another database entry with respect to the database identifier in the
    chosen column
  type: boolean
  inputBinding:
    prefix: --join-db
- id: compute_positions
  doc: 'Add the positions of he hit on the target genome            '
  type: boolean
  inputBinding:
    prefix: --compute-positions
- id: transitive_replace
  doc: Replace cluster name in a search file by all genes in this cluster
  type: boolean
  inputBinding:
    prefix: --transitive-replace
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- filterdb
