version 1.0

task TestTableEquality {
  input {
    Boolean? give_verbose_output
    Array[String] sort_keys
    Array[String] exclude
    Boolean? no_header
    String? to_l
  }
  command <<<
    test_table_equality \
      ~{true="-v" false="" give_verbose_output} \
      ~{if defined(sort_keys) then ("--sort_keys " +  '"' + sort_keys + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--no_header" false="" no_header} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""}
  >>>
  parameter_meta {
    give_verbose_output: "Give verbose output"
    sort_keys: "If specified, values will be sorted by the column(s) corresponding to these name or numbers (0-indexed) before comparison"
    exclude: "Key or number (0-indexed) of columns to exclude"
    no_header: "If specified, no header row is present. Columns for all other command-line flags must be referenced by number (starting at zero) rather than name, and will be assumed to be in the same order in both files."
    to_l: "Tolerance by which floats are allowed to differ (Default: 1e-8)"
  }
}