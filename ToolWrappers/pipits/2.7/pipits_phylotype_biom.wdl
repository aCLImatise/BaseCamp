version 1.0

task PipitsPhylotypeBiom {
  input {
    File? _biom_file
    File? phylotype_txt_file
    Int? classification_level_species
  }
  command <<<
    pipits_phylotype_biom \
      ~{if defined(_biom_file) then ("-i " +  '"' + _biom_file + '"') else ""} \
      ~{if defined(phylotype_txt_file) then ("-o " +  '"' + phylotype_txt_file + '"') else ""} \
      ~{if defined(classification_level_species) then ("-l " +  '"' + classification_level_species + '"') else ""}
  >>>
  parameter_meta {
    _biom_file: "[REQUIRED] BIOM file"
    phylotype_txt_file: "[REQUIRED] PHYLOTYPE txt file"
    classification_level_species: "[REQUIRED] Classification Level. 6 = species, 5 = genus, 4 =\\nfamily, 3 = order, 2 = class, 1 = phylum\\n"
  }
  output {
    File out_stdout = stdout()
  }
}