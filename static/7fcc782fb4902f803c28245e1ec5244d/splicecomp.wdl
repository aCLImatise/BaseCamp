version 1.0

task Splicecomp {
  input {
    String? table_a
    String? table_b
    String? output_directory_default
    String? cc
  }
  command <<<
    splicecomp \
      ~{if defined(table_a) then ("-a " +  '"' + table_a + '"') else ""} \
      ~{if defined(table_b) then ("-b " +  '"' + table_b + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(cc) then ("-cc " +  '"' + cc + '"') else ""}
  >>>
  parameter_meta {
    table_a: "table A"
    table_b: "table B"
    output_directory_default: "Output directory, default='splicecomp_out'"
    cc: "Coverage cutoff, default=0"
  }
}