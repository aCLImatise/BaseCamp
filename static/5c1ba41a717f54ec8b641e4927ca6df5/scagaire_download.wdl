version 1.0

task ScagaireDownload {
  input {
    String? assembly_level
    String? threads
    String? mash_database
    String? output_file
    String? output_directory
    Int? minimum_distance
    String? downloads_directory
    String? refseq_category
    String? a_bricat_e_database
    Int? min_coverage
    Int? min_identity
    Boolean? debug
    Boolean? verbose
    String species
  }
  command <<<
    scagaire_download \
      ~{species} \
      ~{if defined(assembly_level) then ("--assembly_level " +  '"' + assembly_level + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(mash_database) then ("--mash_database " +  '"' + mash_database + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(minimum_distance) then ("--minimum_distance " +  '"' + minimum_distance + '"') else ""} \
      ~{if defined(downloads_directory) then ("--downloads_directory " +  '"' + downloads_directory + '"') else ""} \
      ~{if defined(refseq_category) then ("--refseq_category " +  '"' + refseq_category + '"') else ""} \
      ~{if defined(a_bricat_e_database) then ("--abricate_database " +  '"' + a_bricat_e_database + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    assembly_level: "Assembly level (default: all)"
    threads: "No. of threads (default: 1)"
    mash_database: "Mash database for checking assembly species classification, defaults to bundled (default: None)"
    output_file: "Output filename (default: species_to_genes.tsv)"
    output_directory: "Working output directory (default: None)"
    minimum_distance: "Mash minimum distance threshold (default: 0.2)"
    downloads_directory: "Use this directory of NCBI genomes instead of downloading (default: None)"
    refseq_category: "Quality of the assemblies (default: all)"
    a_bricat_e_database: "Abricate database.Multiple databases comma separated (default: ncbi)"
    min_coverage: "Min percentage coverage over AMR gene (default: 95)"
    min_identity: "Min percentage identity over AMR gene (default: 95)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    species: "Species name, use scagaire_species to see all available"
  }
}