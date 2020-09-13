version 1.0

task FastautilsUid {
  input {
    Boolean? verbose
    File? table
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta_utils uid \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    table: "Filename of a table to record the changes (by default\\ndiscards it)"
    fast_a_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}