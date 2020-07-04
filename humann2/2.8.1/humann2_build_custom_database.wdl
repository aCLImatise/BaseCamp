version 1.0

task Humann2BuildCustomDatabase {
  input {
    String? fasta_input_file
    String? the_output_folder
    String? id_mapping
    String? taxonomic_profile
    String? format
    String? genus_abundance_threshold
  }
  command <<<
    humann2_build_custom_database \
      ~{if defined(fasta_input_file) then ("--input " +  '"' + fasta_input_file + '"') else ""} \
      ~{if defined(the_output_folder) then ("--output " +  '"' + the_output_folder + '"') else ""} \
      ~{if defined(id_mapping) then ("--id-mapping " +  '"' + id_mapping + '"') else ""} \
      ~{if defined(taxonomic_profile) then ("--taxonomic-profile " +  '"' + taxonomic_profile + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(genus_abundance_threshold) then ("--genus-abundance-threshold " +  '"' + genus_abundance_threshold + '"') else ""}
  >>>
  parameter_meta {
    fasta_input_file: "the fasta input file"
    the_output_folder: "the output folder"
    id_mapping: "the file mapping fasta ids to taxonomy"
    taxonomic_profile: "the file containing the taxonomic profile"
    format: "the final database format"
    genus_abundance_threshold: "the minimum abundance for a genus to be included in the database"
  }
}