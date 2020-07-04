version 1.0

task Scagaire {
  input {
    String? database_file
    String? database_name
    String? results_type
    String? output_file
    String? summary_file
    String? overwrite_files
    Int? minimum_occurances
    Boolean? debug
    Boolean? verbose
    String species
    String input_file
  }
  command <<<
    scagaire \
      ~{species} \
      ~{input_file} \
      ~{if defined(database_file) then ("--database_file " +  '"' + database_file + '"') else ""} \
      ~{if defined(database_name) then ("--database_name " +  '"' + database_name + '"') else ""} \
      ~{if defined(results_type) then ("--results_type " +  '"' + results_type + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(summary_file) then ("--summary_file " +  '"' + summary_file + '"') else ""} \
      ~{if defined(overwrite_files) then ("--overwrite_files " +  '"' + overwrite_files + '"') else ""} \
      ~{if defined(minimum_occurances) then ("--minimum_occurances " +  '"' + minimum_occurances + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    database_file: "Database file of species to genes. Defaults to bundled (default: None)"
    database_name: "Database name from abricate (default: resfinder)"
    results_type: "Format of input results. Defaults to automatically detecting format. (default: None)"
    output_file: "Output filename, defaults to STDOUT (default: None)"
    summary_file: "Output summary filename (default: gene_summary.tsv)"
    overwrite_files: "Silently overwrite output files if they already exist (default: False)"
    minimum_occurances: "Minimum number of occurances of a gene in the database to use (default: 0)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    species: "Species name, use scagaire_species to see all available. Multiple species can be passed in comma separated."
    input_file: "Input file of AMR results from Abricate etc..."
  }
}