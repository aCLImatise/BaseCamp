version 1.0

task KrocusDatabaseDownloader {
  input {
    Boolean? list_species
    String? species
    Directory? output_directory
    Boolean? verbose
  }
  command <<<
    krocus_database_downloader \
      ~{if (list_species) then "--list_species" else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_species: "List all available species (default: False)"
    species: "Species to download (default: None)"
    output_directory: "Output directory (default: mlst_files)"
    verbose: "Turn on debugging (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}