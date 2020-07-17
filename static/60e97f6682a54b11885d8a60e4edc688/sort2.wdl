version 1.0

task Sort2 {
  input {
    String? first_column_sort
    String? second_column_sort
    Boolean? version_print_version
    Boolean? depend
    String? debug
    File file
  }
  command <<<
    sort2 \
      ~{file} \
      ~{if defined(first_column_sort) then ("-i " +  '"' + first_column_sort + '"') else ""} \
      ~{if defined(second_column_sort) then ("-j " +  '"' + second_column_sort + '"') else ""} \
      ~{true="-V" false="" version_print_version} \
      ~{true="-depend" false="" depend} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    first_column_sort: "- First  column to sort after (Default 0)"
    second_column_sort: "- Second column to sort after (Default 1)"
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default); "
    file: ""
  }
}