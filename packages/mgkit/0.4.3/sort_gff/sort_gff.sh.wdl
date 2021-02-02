version 1.0

task Sortgffsh {
  input {
    Boolean? ignore_leading_blanks
    Boolean? dictionary_order
    Boolean? ignore_case
    Boolean? general_numeric_sort
    Boolean? ignore_non_printing
    Boolean? month_sort
    Boolean? numeric_sort
    Boolean? random_sort
    File? random_source
    Boolean? reverse
    String? sort_according_wordgeneralnumeric
    Boolean? version_sort
    Int? batch_size
    String? compress_program
    Boolean? debug
    Int? files_zero_from
    String? key
    Boolean? merge
    File? write_result_file
    Boolean? stable
    Int? buffer_size
    String? field_separator
    Directory? temporary_directory
    Int? parallel
    Boolean? unique
    Boolean? zero_terminated
    String var_26
  }
  command <<<
    sort_gff_sh \
      ~{var_26} \
      ~{if (ignore_leading_blanks) then "--ignore-leading-blanks" else ""} \
      ~{if (dictionary_order) then "--dictionary-order" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (general_numeric_sort) then "--general-numeric-sort" else ""} \
      ~{if (ignore_non_printing) then "--ignore-nonprinting" else ""} \
      ~{if (month_sort) then "--month-sort" else ""} \
      ~{if (numeric_sort) then "--numeric-sort" else ""} \
      ~{if (random_sort) then "--random-sort" else ""} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(sort_according_wordgeneralnumeric) then ("--sort " +  '"' + sort_according_wordgeneralnumeric + '"') else ""} \
      ~{if (version_sort) then "--version-sort" else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(compress_program) then ("--compress-program " +  '"' + compress_program + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(files_zero_from) then ("--files0-from " +  '"' + files_zero_from + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(write_result_file) then ("--output " +  '"' + write_result_file + '"') else ""} \
      ~{if (stable) then "--stable" else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(field_separator) then ("--field-separator " +  '"' + field_separator + '"') else ""} \
      ~{if defined(temporary_directory) then ("--temporary-directory " +  '"' + temporary_directory + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  parameter_meta {
    ignore_leading_blanks: "ignore leading blanks"
    dictionary_order: "consider only blanks and alphanumeric characters"
    ignore_case: "fold lower case to upper case characters"
    general_numeric_sort: "compare according to general numerical value"
    ignore_non_printing: "consider only printable characters"
    month_sort: "compare (unknown) < 'JAN' < ... < 'DEC'"
    numeric_sort: "compare according to string numerical value"
    random_sort: "sort by random hash of keys"
    random_source: "get random bytes from FILE"
    reverse: "reverse the result of comparisons"
    sort_according_wordgeneralnumeric: "sort according to WORD:\\ngeneral-numeric -g, human-numeric -h, month -M,\\nnumeric -n, random -R, version -V"
    version_sort: "natural sort of (version) numbers within text"
    batch_size: "merge at most NMERGE inputs at once;\\nfor more use temp files"
    compress_program: "compress temporaries with PROG;\\ndecompress them with PROG -d"
    debug: "annotate the part of the line used to sort,\\nand warn about questionable usage to stderr"
    files_zero_from: "read input from the files specified by\\nNUL-terminated names in file F;\\nIf F is - then read names from standard input"
    key: "sort via a key; KEYDEF gives location and type"
    merge: "merge already sorted files; do not sort"
    write_result_file: "write result to FILE instead of standard output"
    stable: "stabilize sort by disabling last-resort comparison"
    buffer_size: "use SIZE for main memory buffer"
    field_separator: "use SEP instead of non-blank to blank transition"
    temporary_directory: "use DIR for temporaries, not $TMPDIR or /tmp;\\nmultiple options specify multiple directories"
    parallel: "change the number of sorts run concurrently to N"
    unique: "with -c, check for strict ordering;\\nwithout -c, output only the first of an equal run"
    zero_terminated: "line delimiter is NUL, not newline"
    var_26: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_result_file = "${in_write_result_file}"
  }
}