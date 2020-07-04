version 1.0

task Sort {
  input {
    String? ignore_leading_blanks
    String? dictionary_order
    String? ignore_case
    Boolean? general_numeric_sort
    Boolean? ignore_non_printing
    Boolean? month_sort
    Boolean? numeric_sort
    Boolean? random_sort
    File? random_source
    Boolean? reverse
    String? sort
    Boolean? version_sort
    String? parallel
    Boolean? unique
    Boolean? zero_terminated
    String? option
  }
  command <<<
    sort \
      ~{option} \
      ~{if defined(ignore_leading_blanks) then ("--ignore-leading-blanks " +  '"' + ignore_leading_blanks + '"') else ""} \
      ~{if defined(dictionary_order) then ("--dictionary-order " +  '"' + dictionary_order + '"') else ""} \
      ~{if defined(ignore_case) then ("--ignore-case " +  '"' + ignore_case + '"') else ""} \
      ~{true="--general-numeric-sort" false="" general_numeric_sort} \
      ~{true="--ignore-nonprinting" false="" ignore_non_printing} \
      ~{true="--month-sort" false="" month_sort} \
      ~{true="--numeric-sort" false="" numeric_sort} \
      ~{true="--random-sort" false="" random_sort} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{true="--version-sort" false="" version_sort} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    ignore_leading_blanks: "leading blanks"
    dictionary_order: "only blanks and alphanumeric characters"
    ignore_case: "lower case to upper case characters"
    general_numeric_sort: "compare according to general numerical value"
    ignore_non_printing: "consider only printable characters"
    month_sort: "compare (unknown) < 'JAN' < ... < 'DEC'"
    numeric_sort: "compare according to string numerical value"
    random_sort: "shuffle, but group identical keys.  See shuf(1)"
    random_source: "get random bytes from FILE"
    reverse: "reverse the result of comparisons"
    sort: "sort according to WORD: general-numeric -g, human-numeric -h, month -M, numeric -n, random -R, version -V"
    version_sort: "natural sort of (version) numbers within text"
    parallel: "change the number of sorts run concurrently to N"
    unique: "with -c, check for strict ordering; without -c, output only the first of an equal run"
    zero_terminated: "line delimiter is NUL, not newline"
    option: ""
  }
}