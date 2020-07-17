version 1.0

task GalruShrinkDatabase {
  input {
    String? percentage_similarity
    String? db_dir
    String? output_filename
    String? output_crisp_r_filename
    Boolean? debug
    Boolean? verbose
    String species
  }
  command <<<
    galru_shrink_database \
      ~{species} \
      ~{if defined(percentage_similarity) then ("--percentage_similarity " +  '"' + percentage_similarity + '"') else ""} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(output_filename) then ("--output_filename " +  '"' + output_filename + '"') else ""} \
      ~{if defined(output_crisp_r_filename) then ("--output_crispr_filename " +  '"' + output_crisp_r_filename + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    percentage_similarity: "Base directory for species databases, defaults to bundled (default: 0.99)"
    db_dir: "Base directory for species databases, defaults to bundled (default: None)"
    output_filename: "Output database name (default: filtered.metadata.tsv)"
    output_crisp_r_filename: "Output CRISPR FASTA file name (default: filtered.crispr_regions.fasta)"
    debug: "Turn on debugging and save intermediate files (default: False)"
    verbose: "Turn on verbose output (default: False)"
    species: "Species name, use galru_species to see all available"
  }
}