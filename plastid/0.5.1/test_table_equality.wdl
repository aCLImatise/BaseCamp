version 1.0

task TestTableEquality {
  input {
    Boolean? give_verbose_output
    Array[String] sort_keys
    Array[String] exclude
    Boolean? no_header
    Float? to_l
    Int file_one
  }
  command <<<
    test_table_equality \
      ~{file_one} \
      ~{if (give_verbose_output) then "-v" else ""} \
      ~{if defined(sort_keys) then ("--sort_keys " +  '"' + sort_keys + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (no_header) then "--no_header" else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""}
  >>>
  parameter_meta {
    give_verbose_output: "Give verbose output"
    sort_keys: "If specified, values will be sorted by the column(s)\\ncorresponding to these name or numbers (0-indexed)\\nbefore comparison"
    exclude: "Key or number (0-indexed) of columns to exclude"
    no_header: "If specified, no header row is present. Columns for\\nall other command-line flags must be referenced by\\nnumber (starting at zero) rather than name, and will\\nbe assumed to be in the same order in both files."
    to_l: "Tolerance by which floats are allowed to differ\\n(Default: 1e-8)\\n"
    file_one: "file2"
  }
  output {
    File out_stdout = stdout()
  }
}