version 1.0

task EbisearchGetDomains {
  input {
    File? file_export_information
  }
  command <<<
    ebisearch get_domains \
      ~{if defined(file_export_information) then ("--file " +  '"' + file_export_information + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_export_information: "File to export the domain information (optional)"
  }
  output {
    File out_stdout = stdout()
  }
}