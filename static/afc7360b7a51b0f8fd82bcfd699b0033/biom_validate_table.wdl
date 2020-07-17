version 1.0

task BiomValidateTable {
  input {
    File? input_fp
    String? format_version
    Boolean? detailed_report
  }
  command <<<
    biom validate-table \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(format_version) then ("--format-version " +  '"' + format_version + '"') else ""} \
      ~{true="--detailed-report" false="" detailed_report}
  >>>
  parameter_meta {
    input_fp: "The input filpath to validate against the BIOM format specification  [required]"
    format_version: "The specific format version to validate against"
    detailed_report: "Include more details in the output report"
  }
}