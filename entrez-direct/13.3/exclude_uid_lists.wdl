version 1.0

task ExcludeUidLists {
  input {
    String? batch_size
    String? ignore_leading_blanks
    String? compress_program
    String? dictionary_order
    Boolean? debug
    String? ignore_case
    String? files_zero_from
    Boolean? general_numeric_sort
    Boolean? ignore_non_printing
    String? key
    Boolean? merge
    Boolean? month_sort
    File? write_result_file
    String? parallel
    File? random_source
    Boolean? random_sort
    Boolean? reverse
    Int? buffer_size
    String? sort_according_word
    Boolean? stable
    String? field_separator
    String? temporary_directory
    Boolean? unique
    Boolean? version_sort
    Boolean? zero_terminated
    String var_25
    String? option
  }
  command <<<
    exclude-uid-lists \
      ~{var_25} \
      ~{option} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(ignore_leading_blanks) then ("--ignore-leading-blanks " +  '"' + ignore_leading_blanks + '"') else ""} \
      ~{if defined(compress_program) then ("--compress-program " +  '"' + compress_program + '"') else ""} \
      ~{if defined(dictionary_order) then ("--dictionary-order " +  '"' + dictionary_order + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(ignore_case) then ("--ignore-case " +  '"' + ignore_case + '"') else ""} \
      ~{if defined(files_zero_from) then ("--files0-from " +  '"' + files_zero_from + '"') else ""} \
      ~{true="--general-numeric-sort" false="" general_numeric_sort} \
      ~{true="--ignore-nonprinting" false="" ignore_non_printing} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{true="--merge" false="" merge} \
      ~{true="--month-sort" false="" month_sort} \
      ~{if defined(write_result_file) then ("--output " +  '"' + write_result_file + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{true="--random-sort" false="" random_sort} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(sort_according_word) then ("--sort " +  '"' + sort_according_word + '"') else ""} \
      ~{true="--stable" false="" stable} \
      ~{if defined(field_separator) then ("--field-separator " +  '"' + field_separator + '"') else ""} \
      ~{if defined(temporary_directory) then ("--temporary-directory " +  '"' + temporary_directory + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{true="--version-sort" false="" version_sort} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    batch_size: "merge at most NMERGE inputs at once;"
    ignore_leading_blanks: "leading blanks"
    compress_program: "compress temporaries with PROG;"
    dictionary_order: "only blanks and alphanumeric characters"
    debug: "annotate the part of the line used to sort, decompress them with PROG -d"
    ignore_case: "lower case to upper case characters"
    files_zero_from: "read input from the files specified by for more use temp files"
    general_numeric_sort: "compare according to general numerical value"
    ignore_non_printing: "consider only printable characters"
    key: "sort via a key; KEYDEF gives location and type"
    merge: "merge already sorted files; do not sort"
    month_sort: "compare (unknown) < 'JAN' < ... < 'DEC' multiple options specify multiple directories"
    write_result_file: "write result to FILE instead of standard output"
    parallel: "change the number of sorts run concurrently to N"
    random_source: "get random bytes from FILE"
    random_sort: "shuffle, but group identical keys.  See shuf(1)"
    reverse: "reverse the result of comparisons"
    buffer_size: "use SIZE for main memory buffer"
    sort_according_word: "sort according to WORD:"
    stable: "stabilize sort by disabling last-resort comparison"
    field_separator: "use SEP instead of non-blank to blank transition"
    temporary_directory: "use DIR for temporaries, not $TMPDIR or /tmp;"
    unique: "with -c, check for strict ordering;"
    version_sort: "natural sort of (version) numbers within text"
    zero_terminated: "line delimiter is NUL, not newline"
    var_25: ""
    option: ""
  }
}