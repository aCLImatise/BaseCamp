version 1.0

task CsvtkGrep {
  input {
    Boolean? delete_matched
    Int? fields
    Boolean? fuzzy_fields
    Boolean? ignore_case
    Boolean? invert
    Boolean? line_number
    Boolean? no_highlight
    String? pattern
    File? pattern_file
    Boolean? use_regexp
    Boolean? verbose
    Int? chunk_size
    String? comment_char
    File? delimiter
    Boolean? ignore_empty_row
    Boolean? ignore_illegal_row
    File? in_file_list
    Boolean? lazy_quotes
    Boolean? no_header_row
    Int? num_cpus
    File? out_delimiter
    File? out_file
    Boolean? out_tabs
    Boolean? tabs
  }
  command <<<
    csvtk grep \
      ~{if (delete_matched) then "--delete-matched" else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if (fuzzy_fields) then "--fuzzy-fields" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if (line_number) then "--line-number" else ""} \
      ~{if (no_highlight) then "--no-highlight" else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(pattern_file) then ("--pattern-file " +  '"' + pattern_file + '"') else ""} \
      ~{if (use_regexp) then "--use-regexp" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (ignore_empty_row) then "--ignore-empty-row" else ""} \
      ~{if (ignore_illegal_row) then "--ignore-illegal-row" else ""} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{if (lazy_quotes) then "--lazy-quotes" else ""} \
      ~{if (no_header_row) then "--no-header-row" else ""} \
      ~{if defined(num_cpus) then ("--num-cpus " +  '"' + num_cpus + '"') else ""} \
      ~{if defined(out_delimiter) then ("--out-delimiter " +  '"' + out_delimiter + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if (out_tabs) then "--out-tabs" else ""} \
      ~{if (tabs) then "--tabs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    delete_matched: "delete a pattern right after being matched, this keeps the firstly matched data and speedups when using regular expressions"
    fields: "comma separated key fields, column name or index. e.g. -f 1-3 or -f id,id2 or -F -f \\\"group*\\\" (default \\\"1\\\")"
    fuzzy_fields: "using fuzzy fields, e.g., -F -f \\\"*name\\\" or -F -f \\\"id123*\\\""
    ignore_case: "ignore case"
    invert: "invert match"
    line_number: "print line number as the first column (\\\"n\\\")"
    no_highlight: "no highlight"
    pattern: "query pattern (multiple values supported)"
    pattern_file: "pattern files (one pattern per line)"
    use_regexp: "patterns are regular expression"
    verbose: "verbose output"
    chunk_size: "chunk size of CSV reader (default 50)"
    comment_char: "lines starting with commment-character will be ignored. if your header row starts with '#', please assign \\\"-C\\\" another rare symbol, e.g. '$' (default \\\"#\\\")"
    delimiter: "delimiting character of the input CSV file (default \\\",\\\")"
    ignore_empty_row: "ignore empty rows"
    ignore_illegal_row: "ignore illegal rows"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    lazy_quotes: "if given, a quote may appear in an unquoted field and a non-doubled quote may appear in a quoted field"
    no_header_row: "specifies that the input CSV file does not have header row"
    num_cpus: "number of CPUs to use (default value depends on your computer) (default 8)"
    out_delimiter: "delimiting character of the output CSV file, e.g., -D $'\\t' for tab (default \\\",\\\")"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    out_tabs: "specifies that the output is delimited with tabs. Overrides \\\"-D\\\""
    tabs: "specifies that the input CSV file is delimited with tabs. Overrides \\\"-d\\\" and \\\"-D\\\""
  }
  output {
    File out_stdout = stdout()
    File out_out_delimiter = "${in_out_delimiter}"
    File out_out_file = "${in_out_file}"
  }
}