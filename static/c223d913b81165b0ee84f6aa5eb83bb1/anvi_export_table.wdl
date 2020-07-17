version 1.0

task AnviExportTable {
  input {
    String? table
    Boolean? list
    String? s__fields
    File? output_file
    String db
  }
  command <<<
    anvi-export-table \
      ~{db} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{true="--list" false="" list} \
      ~{if defined(s__fields) then ("-f " +  '"' + s__fields + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    table: "Table name to export."
    list: "Gives a list of tables in a database and quits. If a table is already declared this time it lists all the fields in a given table, in case you would to export only a specific list of fields from the table using --fields parameter."
    s__fields: "(S), --fields FIELD(S) Fields to report. Use --list-tables parameter with a table name to see available fields You can list fields using this notation: --fields 'field_1, field_2, ... field_N'."
    output_file: "File path to store results."
    db: "Anvi'o database to read from."
  }
}