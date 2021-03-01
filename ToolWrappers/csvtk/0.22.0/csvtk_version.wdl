version 1.0

task CsvtkVersion {
  input {
    Boolean? check_update
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
    csvtk version \
      ~{if (check_update) then "--check-update" else ""} \
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
    check_update: "check update"
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