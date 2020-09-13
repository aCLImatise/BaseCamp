version 1.0

task Sort2 {
  input {
    Int? first_column_sort
    Int? second_column_sort
    Boolean? version_print_version
    Boolean? depend
    Int? debug
    File file
  }
  command <<<
    sort2 \
      ~{file} \
      ~{if defined(first_column_sort) then ("-i " +  '"' + first_column_sort + '"') else ""} \
      ~{if defined(second_column_sort) then ("-j " +  '"' + second_column_sort + '"') else ""} \
      ~{if (version_print_version) then "-V" else ""} \
      ~{if (depend) then "-depend" else ""} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    first_column_sort: "- First  column to sort after (Default 0)"
    second_column_sort: "- Second column to sort after (Default 1)"
    version_print_version: "|version      - Print the version and exit;"
    depend: "- Print the program and database dependency list;"
    debug: "- Set the debug <level> (0, non-debug by default);"
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}