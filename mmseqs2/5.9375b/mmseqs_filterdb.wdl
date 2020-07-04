version 1.0

task MmseqsFilterdb {
  input {
    Boolean? add_self_matches
    Boolean? column_to_take
    Boolean? filter_regex
    Boolean? positive_filter
    Boolean? filter_file
    Boolean? beats_first
    Boolean? mapping_file
    Boolean? trim_to_one_column
    Boolean? extract_lines
    Boolean? comparison_operator
    Boolean? comparison_value
    Boolean? sort_entries
    Boolean? join_db
    Boolean? compute_positions
    Boolean? transitive_replace
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs filterdb \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="--column-to-take" false="" column_to_take} \
      ~{true="--filter-regex" false="" filter_regex} \
      ~{true="--positive-filter" false="" positive_filter} \
      ~{true="--filter-file" false="" filter_file} \
      ~{true="--beats-first" false="" beats_first} \
      ~{true="--mapping-file" false="" mapping_file} \
      ~{true="--trim-to-one-column" false="" trim_to_one_column} \
      ~{true="--extract-lines" false="" extract_lines} \
      ~{true="--comparison-operator" false="" comparison_operator} \
      ~{true="--comparison-value" false="" comparison_value} \
      ~{true="--sort-entries" false="" sort_entries} \
      ~{true="--join-db" false="" join_db} \
      ~{true="--compute-positions" false="" compute_positions} \
      ~{true="--transitive-replace" false="" transitive_replace} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    column_to_take: "-1              column to take in join mode. If -1, the whole line is taken "
    filter_regex: "^.*$            regex to select column (example float: [0-9]*(.[0-9]+)? int:[1-9]{1}[0-9])"
    positive_filter: "true            used in conjunction with --filter-file. If true, out  = in \intersect filter ; if false, out = in - filter"
    filter_file: "specify a file that contains the filtering elements         "
    beats_first: "false           Filter by comparing each entry to the first entry.          "
    mapping_file: "specify a file that translates the keys of a DB to new keys, TSV format"
    trim_to_one_column: "false           Output only the column specified by --filter-column.        "
    extract_lines: "0               extract n lines of each entry.                              "
    comparison_operator: "Filter by comparing each entry row numerically by using the le) less-than-equal, ge) greater-than-equal or e) equal operator."
    comparison_value: "0.000           Filter by comparing each entry to this value.               "
    sort_entries: "0               Sort column set by --filter-column, by 0) no sorting, 1) increasing,  2) decreasing or 3) random shuffle."
    join_db: "Join another database entry with respect to the database identifier in the chosen column"
    compute_positions: "Add the positions of he hit on the target genome            "
    transitive_replace: "Replace cluster name in a search file by all genes in this cluster"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}