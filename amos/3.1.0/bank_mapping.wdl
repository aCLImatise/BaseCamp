version 1.0

task BankMapping {
  input {
    File? directory_path_report
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    String bank_mapping
  }
  command <<<
    bank-mapping \
      ~{bank_mapping} \
      ~{if defined(directory_path_report) then ("-b " +  '"' + directory_path_report + '"') else ""} \
      ~{true="-s" false="" disregard_bank_locks} \
      ~{true="-v" false="" display_compatible_version}
  >>>
  parameter_meta {
    directory_path_report: "The directory path of the bank to report"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    bank_mapping: "[options]  -b <bank path>  [NCodes]"
  }
}