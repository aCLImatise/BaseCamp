version 1.0

task BiomValidatetable {
  input {
    File? input_fp
    String? format_version
    Boolean? detailed_report
    String format_dot_org
    String specification
  }
  command <<<
    biom validate_table \
      ~{format_dot_org} \
      ~{specification} \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(format_version) then ("--format-version " +  '"' + format_version + '"') else ""} \
      ~{if (detailed_report) then "--detailed-report" else ""}
  >>>
  parameter_meta {
    input_fp: "The input filpath to validate against the BIOM\\nformat specification  [required]"
    format_version: "The specific format version to validate against"
    detailed_report: "Include more details in the output report"
    format_dot_org: "Example usage:"
    specification: "$ biom validate-table -i table.biom"
  }
  output {
    File out_stdout = stdout()
  }
}