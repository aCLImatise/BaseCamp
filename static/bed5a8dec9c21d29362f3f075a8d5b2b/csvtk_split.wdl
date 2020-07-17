version 1.0

task CsvtkSplit {
  input {
    Int? buf_groups
    Int? buf_rows
    String? fields
    Boolean? fuzzy_fields
    Boolean? ignore_case
    Boolean? out_gzip
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
    csvtk split \
      ~{flags} \
      ~{if defined(buf_groups) then ("--buf-groups " +  '"' + buf_groups + '"') else ""} \
      ~{if defined(buf_rows) then ("--buf-rows " +  '"' + buf_rows + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{true="--fuzzy-fields" false="" fuzzy_fields} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--out-gzip" false="" out_gzip} \
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
    buf_groups: "buffering N groups before writing to file (default 100)"
    buf_rows: "buffering N rows for every group before writing to file (default 100000)"
    fields: "comma separated key fields, column name or index. e.g. -f 1-3 or -f id,id2 or -F -f \"group*\" (default \"1\")"
    fuzzy_fields: "using fuzzy fields, e.g., -F -f \"*name\" or -F -f \"id123*\""
    ignore_case: "ignore case"
    out_gzip: "force output gzipped file"
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