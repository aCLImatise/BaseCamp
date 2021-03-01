version 1.0

task CsvtkRename2 {
  input {
    Int? fields
    Boolean? fuzzy_fields
    Boolean? ignore_case
    Boolean? keep_key
    Int? key_capt_idx
    String? key_miss_repl
    File? kv_file
    Boolean? kv_file_all_left_columns_as_value
    String? pattern
    Int? replacement
    Int? start_num
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
    csvtk rename2 \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if (fuzzy_fields) then "--fuzzy-fields" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (keep_key) then "--keep-key" else ""} \
      ~{if defined(key_capt_idx) then ("--key-capt-idx " +  '"' + key_capt_idx + '"') else ""} \
      ~{if defined(key_miss_repl) then ("--key-miss-repl " +  '"' + key_miss_repl + '"') else ""} \
      ~{if defined(kv_file) then ("--kv-file " +  '"' + kv_file + '"') else ""} \
      ~{if (kv_file_all_left_columns_as_value) then "--kv-file-all-left-columns-as-value" else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
      ~{if defined(start_num) then ("--start-num " +  '"' + start_num + '"') else ""} \
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
    docker: "quay.io/biocontainers/csvtk:0.22.0--0"
  }
  parameter_meta {
    fields: "select only these fields. e.g -f 1,2 or -f columnA,columnB"
    fuzzy_fields: "using fuzzy fields, e.g., -F -f \\\"*name\\\" or -F -f \\\"id123*\\\""
    ignore_case: "ignore case"
    keep_key: "keep the key as value when no value found for the key"
    key_capt_idx: "capture variable index of key (1-based) (default 1)"
    key_miss_repl: "replacement for key with no corresponding value"
    kv_file: "tab-delimited key-value file for replacing key with value when using \\\"{kv}\\\" in -r (--replacement)"
    kv_file_all_left_columns_as_value: "treat all columns except 1th one as value for kv-file with more than 2 columns"
    pattern: "search regular expression"
    replacement: "renamement. supporting capture variables.  e.g. $1 represents the text of the first submatch. ATTENTION: use SINGLE quote NOT double quotes in *nix OS or use the \\ escape character. Ascending number is also supported by \\\"{nr}\\\".use ${1} instead of $1 when {kv} given!"
    start_num: "starting number when using {nr} in replacement (default 1)"
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
    tabs: "specifies that the input CSV file is delimited with tabs. Overrides \\\"-d\\\""
  }
  output {
    File out_stdout = stdout()
    File out_out_delimiter = "${in_out_delimiter}"
    File out_out_file = "${in_out_file}"
  }
}