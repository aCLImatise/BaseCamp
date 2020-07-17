version 1.0

task BankReport {
  input {
    File? directory_path_report
    Boolean? include_bids_output
    File? report_only_objects_matching_eids
    File? report_only_objects_matching_iids
    Boolean? display_progress_information
    Boolean? display_only_ids
    Boolean? disregard_bank_locks
    Boolean? just_dump_information
    Boolean? display_compatible_version
    String bank_report
  }
  command <<<
    bank-report \
      ~{bank_report} \
      ~{if defined(directory_path_report) then ("-b " +  '"' + directory_path_report + '"') else ""} \
      ~{true="-B" false="" include_bids_output} \
      ~{if defined(report_only_objects_matching_eids) then ("-E " +  '"' + report_only_objects_matching_eids + '"') else ""} \
      ~{if defined(report_only_objects_matching_iids) then ("-I " +  '"' + report_only_objects_matching_iids + '"') else ""} \
      ~{true="-p" false="" display_progress_information} \
      ~{true="-i" false="" display_only_ids} \
      ~{true="-s" false="" disregard_bank_locks} \
      ~{true="-F" false="" just_dump_information} \
      ~{true="-v" false="" display_compatible_version}
  >>>
  parameter_meta {
    directory_path_report: "The directory path of the bank to report"
    include_bids_output: "Include BIDs in the output messages (for debugging)"
    report_only_objects_matching_eids: "Report only objects matching EIDs in file"
    report_only_objects_matching_iids: "Report only objects matching IIDs in file"
    display_progress_information: "Don't display progress information"
    display_only_ids: "Display only the objects ids"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    just_dump_information: "Just dump the fixed store information"
    display_compatible_version: "Display the compatible bank version"
    bank_report: "[options]  -b <bank path>  [NCodes]"
  }
}