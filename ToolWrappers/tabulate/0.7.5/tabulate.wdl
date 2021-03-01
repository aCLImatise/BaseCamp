version 1.0

task Tabulate {
  input {
    Boolean? header
    File? print_table_file
    String? sep
    Float? floating_point_number
    String? format
    File? var_file
  }
  command <<<
    tabulate \
      ~{var_file} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(print_table_file) then ("--output " +  '"' + print_table_file + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(floating_point_number) then ("--float " +  '"' + floating_point_number + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    header: "use the first row of data as a table header"
    print_table_file: "print table to FILE (default: stdout)"
    sep: "use a custom column separator (default: whitespace)"
    floating_point_number: "floating point number format (default: g)"
    format: "set output table format; supported formats:\\nplain, simple, grid, fancy_grid, pipe, orgtbl,\\nrst, mediawiki, html, latex, latex_booktabs, tsv\\n(default: simple)\\n"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}