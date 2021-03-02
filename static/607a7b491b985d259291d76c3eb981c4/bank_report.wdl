version 1.0

task Bankreport {
  input {
    File? directory_path_report
    Boolean? include_bids_output
    File? report_only_objects_matching_eids
    File? report_only_objects_matching_iids
    Boolean? display_progress_information
    Boolean? display_only_objects
    Boolean? disregard_bank_locks
    Boolean? just_dump_information
    Boolean? display_compatible_version
    String bank_report
  }
  command <<<
    bank_report \
      ~{bank_report} \
      ~{if defined(directory_path_report) then ("-b " +  '"' + directory_path_report + '"') else ""} \
      ~{if (include_bids_output) then "-B" else ""} \
      ~{if defined(report_only_objects_matching_eids) then ("-E " +  '"' + report_only_objects_matching_eids + '"') else ""} \
      ~{if defined(report_only_objects_matching_iids) then ("-I " +  '"' + report_only_objects_matching_iids + '"') else ""} \
      ~{if (display_progress_information) then "-p" else ""} \
      ~{if (display_only_objects) then "-i" else ""} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (just_dump_information) then "-F" else ""} \
      ~{if (display_compatible_version) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_path_report: "The directory path of the bank to report"
    include_bids_output: "Include BIDs in the output messages (for debugging)"
    report_only_objects_matching_eids: "Report only objects matching EIDs in file"
    report_only_objects_matching_iids: "Report only objects matching IIDs in file"
    display_progress_information: "Don't display progress information"
    display_only_objects: "Display only the objects ids"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    just_dump_information: "Just dump the fixed store information"
    display_compatible_version: "Display the compatible bank version"
    bank_report: "[options]  -b <bank path>  [NCodes]"
  }
  output {
    File out_stdout = stdout()
  }
}