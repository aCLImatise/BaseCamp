version 1.0

task MmseqsFilterdb {
  input {
    Boolean? add_self_matches
    Boolean? filter_column
    Boolean? column_to_take
    Boolean? filter_regex
    File? positive_filter
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
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if (filter_column) then "--filter-column" else ""} \
      ~{if (column_to_take) then "--column-to-take" else ""} \
      ~{if (filter_regex) then "--filter-regex" else ""} \
      ~{if (positive_filter) then "--positive-filter" else ""} \
      ~{if (filter_file) then "--filter-file" else ""} \
      ~{if (beats_first) then "--beats-first" else ""} \
      ~{if (mapping_file) then "--mapping-file" else ""} \
      ~{if (trim_to_one_column) then "--trim-to-one-column" else ""} \
      ~{if (extract_lines) then "--extract-lines" else ""} \
      ~{if (comparison_operator) then "--comparison-operator" else ""} \
      ~{if (comparison_value) then "--comparison-value" else ""} \
      ~{if (sort_entries) then "--sort-entries" else ""} \
      ~{if (join_db) then "--join-db" else ""} \
      ~{if (compute_positions) then "--compute-positions" else ""} \
      ~{if (transitive_replace) then "--transitive-replace" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    filter_column: "1               column"
    column_to_take: "-1              column to take in join mode. If -1, the whole line is taken"
    filter_regex: "^.*$            regex to select column (example float: [0-9]*(.[0-9]+)? int:[1-9]{1}[0-9])"
    positive_filter: "true            used in conjunction with --filter-file. If true, out  = in \\intersect filter ; if false, out = in - filter"
    filter_file: "specify a file that contains the filtering elements"
    beats_first: "false           Filter by comparing each entry to the first entry."
    mapping_file: "specify a file that translates the keys of a DB to new keys, TSV format"
    trim_to_one_column: "false           Output only the column specified by --filter-column."
    extract_lines: "0               extract n lines of each entry."
    comparison_operator: "Filter by comparing each entry row numerically by using the le) less-than-equal, ge) greater-than-equal or e) equal operator."
    comparison_value: "0.000           Filter by comparing each entry to this value."
    sort_entries: "0               Sort column set by --filter-column, by 0) no sorting, 1) increasing,  2) decreasing or 3) random shuffle."
    join_db: "Join another database entry with respect to the database identifier in the chosen column"
    compute_positions: "Add the positions of he hit on the target genome"
    transitive_replace: "Replace cluster name in a search file by all genes in this cluster"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_positive_filter = "${in_positive_filter}"
  }
}