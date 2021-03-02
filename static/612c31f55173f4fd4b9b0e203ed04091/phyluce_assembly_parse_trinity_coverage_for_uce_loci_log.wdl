version 1.0

task PhyluceAssemblyParseTrinityCoverageForUceLociLog {
  input {
    File? log
    File? output_csv_file
  }
  command <<<
    phyluce_assembly_parse_trinity_coverage_for_uce_loci_log \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(output_csv_file) then ("--output " +  '"' + output_csv_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log: "The log file to parse"
    output_csv_file: "The output CSV file to create"
  }
  output {
    File out_stdout = stdout()
    File out_output_csv_file = "${in_output_csv_file}"
  }
}