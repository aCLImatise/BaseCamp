version 1.0

task DownloadPlasmidDatabasepy {
  input {
    Directory? required_output_directory
  }
  command <<<
    download_plasmid_database_py \
      ~{if defined(required_output_directory) then ("--output " +  '"' + required_output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    required_output_directory: "REQUIRED. Output directory to extract plasmid database\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_required_output_directory = "${in_required_output_directory}"
  }
}