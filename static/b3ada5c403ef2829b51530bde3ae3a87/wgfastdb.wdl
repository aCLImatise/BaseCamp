version 1.0

task Wgfastdb {
  input {
    File? log
    Boolean? no_update
    Boolean? no_assembly_update
    Boolean? download_only
    Array[String] species
    File? config
    Boolean? curate_only
    Array[String] unknowns
    Array[String] contigs
    Array[Int] assembly_size
    Array[String] distance
    Array[String] reference
  }
  command <<<
    wgfastdb \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (no_update) then "--no_update" else ""} \
      ~{if (no_assembly_update) then "--no_assembly_update" else ""} \
      ~{if (download_only) then "--download_only" else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (curate_only) then "--curate_only" else ""} \
      ~{if defined(unknowns) then ("--unknowns " +  '"' + unknowns + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(assembly_size) then ("--assembly_size " +  '"' + assembly_size + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    log: "Set log file path (default: ./wgfastdb.log)"
    no_update: "Do not sync your collection with the latest assembly\\nversions (default: False)"
    no_assembly_update: "Do not download the latest assembly summary and\\ntaxonomy dump and use your local copies. (default:\\nFalse)"
    download_only: "Run only the download step. (default: False)"
    species: "List of species to build database. The species name\\nmust match exactly a species directory at\\nftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/bacteria/\\n(default: None)"
    config: "Path to config table (.csv). Table MUST include a\\n\\\"species\\\" column and may include a column \\\"reference\\\"\\nfor reference genomes. Curation parameters can also be\\nset in the table using column headers: \\\"unknowns\\\",\\n\\\"contigs\\\", \\\"assembly_size\\\", and \\\"distance\\\". If a\\nparameter cell is left blank it will be replaced with\\nthe default value or a value passed from the command\\nline (default: None)"
    curate_only: "Run only the curate step (default: False)"
    unknowns: "Maximum number of unknown bases (not A, T, C, G) for\\ncuration. If more than one value is passed, the list\\nmust be the same length as the number of species.\\nOtherwise the same value is applied to all species.\\n(default: [200])"
    contigs: "Acceptable deviations from median number of contigs\\nfor curation. If more than one value is passed, the\\nlist must be the same length as the number of species.\\nOtherwise the same value is applied to all species\\n(default: [3.0])"
    assembly_size: "Acceptable devations from median assembly size for\\ncuration. If more than one value is passed, the list\\nmust be the same length as the number of species.\\nOtherwise the same value is applied to all species\\n(default: [3.0])"
    distance: "Acceptable deviations from median MASH distances for\\ncuration. If more than one value is passed, the list\\nmust be the same length as the number of species.\\nOtherwise the same value is applied to all species\\n(default: [3.0])"
    reference: "Define which genome to use as reference by providing\\naccession number (GCA_XXXXXXXXX). This list should be\\nthe same length as the number of species. This is\\nREQUIRED from the command line or in the config file.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}