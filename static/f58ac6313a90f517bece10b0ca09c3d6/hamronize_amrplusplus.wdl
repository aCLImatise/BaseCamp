version 1.0

task HamronizeAmrplusplus {
  input {
    String? format
    String? output_location
    String? analysis_software_version
    String? reference_database_version
    File? input_file_name
    String report
  }
  command <<<
    hamronize amrplusplus \
      ~{report} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(output_location) then ("--output " +  '"' + output_location + '"') else ""} \
      ~{if defined(analysis_software_version) then ("--analysis_software_version " +  '"' + analysis_software_version + '"') else ""} \
      ~{if defined(reference_database_version) then ("--reference_database_version " +  '"' + reference_database_version + '"') else ""} \
      ~{if defined(input_file_name) then ("--input_file_name " +  '"' + input_file_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hamronization:1.0.3--py_0"
  }
  parameter_meta {
    format: "Output format (tsv or json)"
    output_location: "Output location"
    analysis_software_version: "Input string containing the analysis_software_version\\nfor amrplusplus"
    reference_database_version: "Input string containing the reference_database_version\\nfor amrplusplus"
    input_file_name: "Input string containing the input_file_name for\\namrplusplus\\n"
    report: "Path to report(s)"
  }
  output {
    File out_stdout = stdout()
  }
}