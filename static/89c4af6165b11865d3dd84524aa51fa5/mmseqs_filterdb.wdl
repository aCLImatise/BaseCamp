version 1.0

task MmseqsFilterdb {
  input {
    Boolean? add_self_matches
    String? filter_expression
    Int? filter_column
    Int? column_to_take
    Float? filter_regex
    File? positive_filter
    File? filter_file
    Boolean? beats_first
    File? mapping_file
    Boolean? trim_to_one_column
    Int? extract_lines
    String? comparison_operator
    Float? comparison_value
    Int? sort_entries
    String? join_db
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs filterdb \
      ~{if defined(add_self_matches) then ("--add-self-matches " +  '"' + add_self_matches + '"') else ""} \
      ~{if defined(filter_expression) then ("--filter-expression " +  '"' + filter_expression + '"') else ""} \
      ~{if defined(filter_column) then ("--filter-column " +  '"' + filter_column + '"') else ""} \
      ~{if defined(column_to_take) then ("--column-to-take " +  '"' + column_to_take + '"') else ""} \
      ~{if defined(filter_regex) then ("--filter-regex " +  '"' + filter_regex + '"') else ""} \
      ~{if defined(positive_filter) then ("--positive-filter " +  '"' + positive_filter + '"') else ""} \
      ~{if defined(filter_file) then ("--filter-file " +  '"' + filter_file + '"') else ""} \
      ~{if defined(beats_first) then ("--beats-first " +  '"' + beats_first + '"') else ""} \
      ~{if defined(mapping_file) then ("--mapping-file " +  '"' + mapping_file + '"') else ""} \
      ~{if defined(trim_to_one_column) then ("--trim-to-one-column " +  '"' + trim_to_one_column + '"') else ""} \
      ~{if defined(extract_lines) then ("--extract-lines " +  '"' + extract_lines + '"') else ""} \
      ~{if defined(comparison_operator) then ("--comparison-operator " +  '"' + comparison_operator + '"') else ""} \
      ~{if defined(comparison_value) then ("--comparison-value " +  '"' + comparison_value + '"') else ""} \
      ~{if defined(sort_entries) then ("--sort-entries " +  '"' + sort_entries + '"') else ""} \
      ~{if defined(join_db) then ("--join-db " +  '"' + join_db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    add_self_matches: "Artificially add entries of queries with themselves (for clustering) [0]"
    filter_expression: "Specify a mathematical expression to filter lines []"
    filter_column: "column [1]"
    column_to_take: "column to take in join mode. If -1, the whole line is taken [-1]"
    filter_regex: "Regex to select column (example float: [0-9]*(.[0-9]+)? int:[1-9]{1}[0-9]) [^.*$]"
    positive_filter: "Used in conjunction with --filter-file. If true, out  = in \\intersect filter ; if false, out = in - filter [1]"
    filter_file: "Specify a file that contains the filtering elements []"
    beats_first: "Filter by comparing each entry to the first entry [0]"
    mapping_file: "Specify a file that translates the keys of a DB to new keys, TSV format []"
    trim_to_one_column: "Output only the column specified by --filter-column [0]"
    extract_lines: "Extract n lines of each entry [0]"
    comparison_operator: "Filter by comparing each entry row numerically by using the le) less-than-equal, ge) greater-than-equal or e) equal operator []"
    comparison_value: "Filter by comparing each entry to this value [0.000E+00]"
    sort_entries: "Sort column set by --filter-column, by 0: no sorting, 1: increasing, 2: decreasing, 3: random shuffle [0]"
    join_db: "Join another database entry with respect to the database identifier in the chosen column []"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
    File out_positive_filter = "${in_positive_filter}"
  }
}