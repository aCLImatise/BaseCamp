version 1.0

task CsvtkGrep {
  input {
    Boolean? delete_matched
    String? fields
    Boolean? fuzzy_fields
    Boolean? ignore_case
    Boolean? invert
    Boolean? line_number
    Boolean? no_highlight
    String? pattern
    String? pattern_file
    Boolean? use_regexp
    Boolean? verbose
    Int? chunk_size
    String? comment_char
    String? delimiter
    Boolean? ignore_empty_row
    Boolean? ignore_illegal_row
    String? in_file_list
    Boolean? lazy_quotes
    Boolean? no_header_row
    Int? num_cpus
    String? out_delimiter
    String? out_file
    Boolean? out_tabs
    Boolean? tabs
    String? flags
  }
  command <<<
    csvtk grep \
      ~{flags} \
      ~{true="--delete-matched" false="" delete_matched} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{true="--fuzzy-fields" false="" fuzzy_fields} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--invert" false="" invert} \
      ~{true="--line-number" false="" line_number} \
      ~{true="--no-highlight" false="" no_highlight} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(pattern_file) then ("--pattern-file " +  '"' + pattern_file + '"') else ""} \
      ~{true="--use-regexp" false="" use_regexp} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{true="--ignore-empty-row" false="" ignore_empty_row} \
      ~{true="--ignore-illegal-row" false="" ignore_illegal_row} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{true="--lazy-quotes" false="" lazy_quotes} \
      ~{true="--no-header-row" false="" no_header_row} \
      ~{if defined(num_cpus) then ("--num-cpus " +  '"' + num_cpus + '"') else ""} \
      ~{if defined(out_delimiter) then ("--out-delimiter " +  '"' + out_delimiter + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{true="--out-tabs" false="" out_tabs} \
      ~{true="--tabs" false="" tabs}
  >>>
  parameter_meta {
    delete_matched: "delete a pattern right after being matched, this keeps the firstly matched data and speedups when using regular expressions"
    fields: "comma separated key fields, column name or index. e.g. -f 1-3 or -f id,id2 or -F -f \"group*\" (default \"1\")"
    fuzzy_fields: "using fuzzy fields, e.g., -F -f \"*name\" or -F -f \"id123*\""
    ignore_case: "ignore case"
    invert: "invert match"
    line_number: "print line number as the first column (\"n\")"
    no_highlight: "no highlight"
    pattern: "query pattern (multiple values supported)"
    pattern_file: "pattern files (one pattern per line)"
    use_regexp: "patterns are regular expression"
    verbose: "verbose output"
    chunk_size: "chunk size of CSV reader (default 50)"
    comment_char: "lines starting with commment-character will be ignored. if your header row starts with '#', please assign \"-C\" another rare symbol, e.g. '$' (default \"#\")"
    delimiter: "delimiting character of the input CSV file (default \",\")"
    ignore_empty_row: "ignore empty rows"
    ignore_illegal_row: "ignore illegal rows"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    lazy_quotes: "if given, a quote may appear in an unquoted field and a non-doubled quote may appear in a quoted field"
    no_header_row: "specifies that the input CSV file does not have header row"
    num_cpus: "number of CPUs to use (default value depends on your computer) (default 8)"
    out_delimiter: "delimiting character of the output CSV file, e.g., -D $'\t' for tab (default \",\")"
    out_file: "out file (\"-\" for stdout, suffix .gz for gzipped out) (default \"-\")"
    out_tabs: "specifies that the output is delimited with tabs. Overrides \"-D\""
    tabs: "specifies that the input CSV file is delimited with tabs. Overrides \"-d\" and \"-D\""
    flags: ""
  }
}