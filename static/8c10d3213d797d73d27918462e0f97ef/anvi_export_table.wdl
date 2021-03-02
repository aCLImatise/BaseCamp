version 1.0

task Anviexporttable {
  input {
    String? table
    Boolean? list
    Int? s__fields
    File? output_file
  }
  command <<<
    anvi_export_table \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if defined(s__fields) then ("-f " +  '"' + s__fields + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    table: "Table name to export."
    list: "Gives a list of tables in a database and quits. If a\\ntable is already declared this time it lists all the\\nfields in a given table, in case you would to export\\nonly a specific list of fields from the table using\\n--fields parameter."
    s__fields: "(S), --fields FIELD(S)\\nFields to report. Use --list-tables parameter with a\\ntable name to see available fields You can list fields\\nusing this notation: --fields 'field_1, field_2, ...\\nfield_N'."
    output_file: "File path to store results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}