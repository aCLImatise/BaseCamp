class: CommandLineTool
id: mmseqs_filterdb.cwl
inputs:
- id: in_add_self_matches
  doc: Artificially add entries of queries with themselves (for clustering) [0]
  type: boolean?
  inputBinding:
    prefix: --add-self-matches
- id: in_filter_expression
  doc: Specify a mathematical expression to filter lines []
  type: string?
  inputBinding:
    prefix: --filter-expression
- id: in_filter_column
  doc: column [1]
  type: long?
  inputBinding:
    prefix: --filter-column
- id: in_column_to_take
  doc: column to take in join mode. If -1, the whole line is taken [-1]
  type: long?
  inputBinding:
    prefix: --column-to-take
- id: in_filter_regex
  doc: 'Regex to select column (example float: [0-9]*(.[0-9]+)? int:[1-9]{1}[0-9])
    [^.*$]'
  type: double?
  inputBinding:
    prefix: --filter-regex
- id: in_positive_filter
  doc: Used in conjunction with --filter-file. If true, out  = in \intersect filter
    ; if false, out = in - filter [1]
  type: File?
  inputBinding:
    prefix: --positive-filter
- id: in_filter_file
  doc: Specify a file that contains the filtering elements []
  type: File?
  inputBinding:
    prefix: --filter-file
- id: in_beats_first
  doc: Filter by comparing each entry to the first entry [0]
  type: boolean?
  inputBinding:
    prefix: --beats-first
- id: in_mapping_file
  doc: Specify a file that translates the keys of a DB to new keys, TSV format []
  type: File?
  inputBinding:
    prefix: --mapping-file
- id: in_trim_to_one_column
  doc: Output only the column specified by --filter-column [0]
  type: boolean?
  inputBinding:
    prefix: --trim-to-one-column
- id: in_extract_lines
  doc: Extract n lines of each entry [0]
  type: long?
  inputBinding:
    prefix: --extract-lines
- id: in_comparison_operator
  doc: Filter by comparing each entry row numerically by using the le) less-than-equal,
    ge) greater-than-equal or e) equal operator []
  type: string?
  inputBinding:
    prefix: --comparison-operator
- id: in_comparison_value
  doc: Filter by comparing each entry to this value [0.000E+00]
  type: double?
  inputBinding:
    prefix: --comparison-value
- id: in_sort_entries
  doc: 'Sort column set by --filter-column, by 0: no sorting, 1: increasing, 2: decreasing,
    3: random shuffle [0]'
  type: long?
  inputBinding:
    prefix: --sort-entries
- id: in_join_db
  doc: Join another database entry with respect to the database identifier in the
    chosen column []
  type: string?
  inputBinding:
    prefix: --join-db
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_positive_filter
  doc: Used in conjunction with --filter-file. If true, out  = in \intersect filter
    ; if false, out = in - filter [1]
  type: File?
  outputBinding:
    glob: $(inputs.in_positive_filter)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- filterdb
