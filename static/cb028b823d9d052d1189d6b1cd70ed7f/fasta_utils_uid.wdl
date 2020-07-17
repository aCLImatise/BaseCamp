version 1.0

task FastaUtilsUid {
  input {
    File? table
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta-utils uid \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""}
  >>>
  parameter_meta {
    table: "Filename of a table to record the changes (by default discards it)"
    fast_a_file: ""
    output_file: ""
  }
}