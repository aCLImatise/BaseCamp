version 1.0

task KrocusDatabaseDownloader {
  input {
    Boolean? list_species
    String? species
    String? output_directory
    Boolean? verbose
  }
  command <<<
    krocus_database_downloader \
      ~{true="--list_species" false="" list_species} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    list_species: "List all available species (default: False)"
    species: "Species to download (default: None)"
    output_directory: "Output directory (default: mlst_files)"
    verbose: "Turn on debugging (default: False)"
  }
}