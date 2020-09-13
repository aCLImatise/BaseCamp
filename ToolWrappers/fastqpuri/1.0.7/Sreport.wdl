version 1.0

task Sreport {
  input {
    String? package_version
    String? help_dialog
    Directory? folder_containing_output
    String? type_report_generated
    File? file_extension_mandatory
  }
  command <<<
    Sreport \
      ~{if defined(package_version) then ("-v " +  '"' + package_version + '"') else ""} \
      ~{if defined(help_dialog) then ("-h " +  '"' + help_dialog + '"') else ""} \
      ~{if defined(folder_containing_output) then ("-i " +  '"' + folder_containing_output + '"') else ""} \
      ~{if defined(type_report_generated) then ("-t " +  '"' + type_report_generated + '"') else ""} \
      ~{if defined(file_extension_mandatory) then ("-o " +  '"' + file_extension_mandatory + '"') else ""}
  >>>
  parameter_meta {
    package_version: "package version."
    help_dialog: "help dialog."
    folder_containing_output: "folder containing *bin data (output from Qreport). Mandatory option."
    type_report_generated: "Type of report to be generated: 'Q' for quality summary\\nreport, 'F' for filter summary report (single-end reads), and\\n'P' for filter summary report (paired-end reads)\\ndata filter summary report. Mandatory option,"
    file_extension_mandatory: "file (with NO extension). Mandatory option."
  }
  output {
    File out_stdout = stdout()
    Directory out_folder_containing_output = "${in_folder_containing_output}"
  }
}