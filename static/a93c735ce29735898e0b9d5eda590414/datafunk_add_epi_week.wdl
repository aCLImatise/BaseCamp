version 1.0

task DatafunkAddEpiWeek {
  input {
    String? input_metadata
    String? output_metadata
    String? column_name_convert
    String? epi_week_column_name
    String? epi_day_column_name
    String? epi_column_name
    String? var_6
  }
  command <<<
    datafunk add_epi_week \
      ~{if defined(input_metadata) then ("--input-metadata " +  '"' + input_metadata + '"') else ""} \
      ~{if defined(output_metadata) then ("--output-metadata " +  '"' + output_metadata + '"') else ""} \
      ~{if defined(column_name_convert) then ("--date-column " +  '"' + column_name_convert + '"') else ""} \
      ~{if defined(epi_week_column_name) then ("--epi-week-column-name " +  '"' + epi_week_column_name + '"') else ""} \
      ~{if defined(epi_day_column_name) then ("--epi-day-column-name " +  '"' + epi_day_column_name + '"') else ""} \
      ~{if defined(epi_column_name) then ("--epi-column-name " +  '"' + epi_column_name + '"') else ""} \
      ~{if defined(var_6) then ("--date_column " +  '"' + var_6 + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_metadata: "Input CSV or TSV"
    output_metadata: "Input CSV or TSV"
    column_name_convert: "Column name to convert to epi week"
    epi_week_column_name: "Column name for epi week column"
    epi_day_column_name: "Column name for epi day column\\n"
    epi_column_name: ""
    var_6: ""
  }
  output {
    File out_stdout = stdout()
  }
}