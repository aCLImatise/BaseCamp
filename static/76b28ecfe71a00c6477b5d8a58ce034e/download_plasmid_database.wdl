version 1.0

task DownloadPlasmidDatabase.py {
  input {
    String? required_output_directory
  }
  command <<<
    download_plasmid_database.py \
      ~{if defined(required_output_directory) then ("--output " +  '"' + required_output_directory + '"') else ""}
  >>>
  parameter_meta {
    required_output_directory: "REQUIRED. Output directory to extract plasmid database"
  }
}