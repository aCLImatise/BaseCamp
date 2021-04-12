version 1.0

task PypgatkClipyCbioportaldownloader {
  input {
    File? config_file
    Directory? output_directory
    Boolean? list_studies
    String? download_study
    Boolean? multithreading
  }
  command <<<
    pypgatk_cli_py cbioportal_downloader \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if (list_studies) then "--list_studies" else ""} \
      ~{if defined(download_study) then ("--download_study " +  '"' + download_study + '"') else ""} \
      ~{if (multithreading) then "--multithreading" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.19--py_0"
  }
  parameter_meta {
    config_file: "Configuration file for the ensembl data\\ndownloader pipeline"
    output_directory: "Output directory for the peptide databases"
    list_studies: "Print the list of all the studies in cBioPortal\\n(https://www.cbioportal.org)"
    download_study: "Download a specific Study from cBioPortal --\\n(all to download all studies)"
    multithreading: "Enable multithreading to download multiple\\nfiles ad the same time"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}