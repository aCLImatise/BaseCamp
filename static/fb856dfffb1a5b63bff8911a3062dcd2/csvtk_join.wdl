version 1.0

task CsvtkJoin {
  input {
    String? fields
    Boolean? fuzzy_fields
    Boolean? ignore_case
    Boolean? keep_unmatched
    Boolean? left_join
    String? na
    Boolean? outer_join
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
    csvtk join \
      ~{flags} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{true="--fuzzy-fields" false="" fuzzy_fields} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--keep-unmatched" false="" keep_unmatched} \
      ~{true="--left-join" false="" left_join} \
      ~{if defined(na) then ("--na " +  '"' + na + '"') else ""} \
      ~{true="--outer-join" false="" outer_join} \
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
    fields: "Semicolon separated key fields of all files, if given one, we think all the files have the same key columns. Fields of different files should be separated by \";\", e.g -f \"1;2\" or -f \"A,B;C,D\" or -f id (default \"1\")"
    fuzzy_fields: "using fuzzy fields, e.g., -F -f \"*name\" or -F -f \"id123*\""
    ignore_case: "ignore case"
    keep_unmatched: "keep unmatched data of the first file (left join)"
    left_join: "left join, equals to -k/--keep-unmatched, exclusive with --outer-join"
    na: "content for filling NA data"
    outer_join: "outer join, exclusive with --left-join"
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