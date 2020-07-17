version 1.0

task Junccomp {
  input {
    String? table_default_none
    String? table_b_default
    String? output_directory_default
  }
  command <<<
    junccomp \
      ~{if defined(table_default_none) then ("-a " +  '"' + table_default_none + '"') else ""} \
      ~{if defined(table_b_default) then ("-b " +  '"' + table_b_default + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""}
  >>>
  parameter_meta {
    table_default_none: "table A (default: None)"
    table_b_default: "table B (default: None)"
    output_directory_default: "Output directory, default='junccomp_out' (default: junccomp_out)"
  }
}