version 1.0

task Bankmapping {
  input {
    File? directory_path_report
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    String bank_mapping
  }
  command <<<
    bank_mapping \
      ~{bank_mapping} \
      ~{if defined(directory_path_report) then ("-b " +  '"' + directory_path_report + '"') else ""} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""}
  >>>
  parameter_meta {
    directory_path_report: "The directory path of the bank to report"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    bank_mapping: "[options]  -b <bank path>  [NCodes]"
  }
  output {
    File out_stdout = stdout()
  }
}