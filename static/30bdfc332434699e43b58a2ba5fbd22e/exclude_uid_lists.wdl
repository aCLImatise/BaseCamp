version 1.0

task Excludeuidlists {
  input {
    Int? batch_size
    Boolean? ignore_leading_blanks
    String? compress_program
    Boolean? dictionary_order
    Boolean? debug
    Boolean? ignore_case
    Int? files_zero_from
    Boolean? general_numeric_sort
    Boolean? human_numeric_sort
    Boolean? ignore_non_printing
    String? key
    Boolean? merge
    Boolean? month_sort
    Boolean? numeric_sort
    File? write_result_output
    Int? parallel
    File? random_source
    Boolean? random_sort
    Boolean? reverse
    Int? buffer_size
    String? sort_according_word
    Boolean? stable
    String? field_separator
    Directory? temporary_directory
    Boolean? unique
    Boolean? version_sort
    Boolean? zero_terminated
    String var_27
  }
  command <<<
    exclude_uid_lists \
      ~{var_27} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if (ignore_leading_blanks) then "--ignore-leading-blanks" else ""} \
      ~{if defined(compress_program) then ("--compress-program " +  '"' + compress_program + '"') else ""} \
      ~{if (dictionary_order) then "--dictionary-order" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if defined(files_zero_from) then ("--files0-from " +  '"' + files_zero_from + '"') else ""} \
      ~{if (general_numeric_sort) then "--general-numeric-sort" else ""} \
      ~{if (human_numeric_sort) then "--human-numeric-sort" else ""} \
      ~{if (ignore_non_printing) then "--ignore-nonprinting" else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (month_sort) then "--month-sort" else ""} \
      ~{if (numeric_sort) then "--numeric-sort" else ""} \
      ~{if defined(write_result_output) then ("--output " +  '"' + write_result_output + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{if (random_sort) then "--random-sort" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(sort_according_word) then ("--sort " +  '"' + sort_according_word + '"') else ""} \
      ~{if (stable) then "--stable" else ""} \
      ~{if defined(field_separator) then ("--field-separator " +  '"' + field_separator + '"') else ""} \
      ~{if defined(temporary_directory) then ("--temporary-directory " +  '"' + temporary_directory + '"') else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (version_sort) then "--version-sort" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    batch_size: "merge at most NMERGE inputs at once;"
    ignore_leading_blanks: "ignore leading blanks"
    compress_program: "compress temporaries with PROG;"
    dictionary_order: "consider only blanks and alphanumeric characters"
    debug: "annotate the part of the line used to sort,\\ndecompress them with PROG -d"
    ignore_case: "fold lower case to upper case characters"
    files_zero_from: "read input from the files specified by\\nfor more use temp files"
    general_numeric_sort: "compare according to general numerical value"
    human_numeric_sort: "compare human readable numbers (e.g., 2K 1G)\\nIf F is - then read names from standard input"
    ignore_non_printing: "consider only printable characters"
    key: "sort via a key; KEYDEF gives location and type"
    merge: "merge already sorted files; do not sort"
    month_sort: "compare (unknown) < 'JAN' < ... < 'DEC'\\nmultiple options specify multiple directories"
    numeric_sort: "compare according to string numerical value\\nNUL-terminated names in file F;\\nnumeric -n, random -R, version -V"
    write_result_output: "write result to FILE instead of standard output"
    parallel: "change the number of sorts run concurrently to N"
    random_source: "get random bytes from FILE"
    random_sort: "sort by random hash of keys"
    reverse: "reverse the result of comparisons"
    buffer_size: "use SIZE for main memory buffer"
    sort_according_word: "sort according to WORD:"
    stable: "stabilize sort by disabling last-resort comparison"
    field_separator: "use SEP instead of non-blank to blank transition"
    temporary_directory: "use DIR for temporaries, not $TMPDIR or /tmp;"
    unique: "with -c, check for strict ordering;"
    version_sort: "natural sort of (version) numbers within text"
    zero_terminated: "line delimiter is NUL, not newline"
    var_27: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_result_output = "${in_write_result_output}"
  }
}