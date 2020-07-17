version 1.0

task CsvtkSummary {
  input {
    Int? decimal_width
    String? fields
    String? groups
    Boolean? ignore_non_digits
    Int? rand_seed
    String? separate_r
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
    csvtk summary \
      ~{flags} \
      ~{if defined(decimal_width) then ("--decimal-width " +  '"' + decimal_width + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{true="--ignore-non-digits" false="" ignore_non_digits} \
      ~{if defined(rand_seed) then ("--rand-seed " +  '"' + rand_seed + '"') else ""} \
      ~{if defined(separate_r) then ("--separater " +  '"' + separate_r + '"') else ""} \
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
    decimal_width: "limit floats to N decimal points (default 2)"
    fields: "operations on these fields. e.g -f 1:count,1:sum or -f colA:mean. available operations: collapse, count, countn, countunique, entropy, first, last, max, mean, median, min, prod, q1, q2, q3, rand, stdev, sum, uniq, variance"
    groups: "group via fields. e.g -f 1,2 or -f columnA,columnB"
    ignore_non_digits: "ignore non-digital values like \"NA\" or \"N/A\""
    rand_seed: "rand seed for operation \"rand\" (default 11)"
    separate_r: "separater for collapsed data (default \"; \")"
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