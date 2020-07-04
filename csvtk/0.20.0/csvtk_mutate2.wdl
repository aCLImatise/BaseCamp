version 1.0

task CsvtkMutate2 {
  input {
    Int? digits
    Boolean? digits_as_string
    String? expression
    String? name
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
    csvtk mutate2 \
      ~{flags} \
      ~{if defined(digits) then ("--digits " +  '"' + digits + '"') else ""} \
      ~{true="--digits-as-string" false="" digits_as_string} \
      ~{if defined(expression) then ("--expression " +  '"' + expression + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
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
    digits: "number of digits after the dot (default 2)"
    digits_as_string: "treate digits as string to avoid converting big digits into scientific notation"
    expression: "artithmetic/string expressions. e.g. \"'string'\", '\"abc\"', ' $a + \"-\" + $b ', '$1 + $2', '$a / $b', ' $1 > 100 ? \"big\" : \"small\" '"
    name: "new column name"
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