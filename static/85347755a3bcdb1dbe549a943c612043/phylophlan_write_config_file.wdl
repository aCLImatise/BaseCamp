version 1.0

task PhylophlanWriteConfigFile {
  input {
    String? specify_output_file
    String? db_type
    String? db_dna
    String? db_aa
    String? map_dna
    String? map_aa
    String? msa
    String? trim
    String? gene_tree_one
    String? gene_tree_two
    String? tree_one
    String? tree_two
    Boolean? absolute_path
    Boolean? force_nucleotides
    Boolean? overwrite
    Boolean? verbose
  }
  command <<<
    phylophlan_write_config_file \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if defined(db_type) then ("--db_type " +  '"' + db_type + '"') else ""} \
      ~{if defined(db_dna) then ("--db_dna " +  '"' + db_dna + '"') else ""} \
      ~{if defined(db_aa) then ("--db_aa " +  '"' + db_aa + '"') else ""} \
      ~{if defined(map_dna) then ("--map_dna " +  '"' + map_dna + '"') else ""} \
      ~{if defined(map_aa) then ("--map_aa " +  '"' + map_aa + '"') else ""} \
      ~{if defined(msa) then ("--msa " +  '"' + msa + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(gene_tree_one) then ("--gene_tree1 " +  '"' + gene_tree_one + '"') else ""} \
      ~{if defined(gene_tree_two) then ("--gene_tree2 " +  '"' + gene_tree_two + '"') else ""} \
      ~{if defined(tree_one) then ("--tree1 " +  '"' + tree_one + '"') else ""} \
      ~{if defined(tree_two) then ("--tree2 " +  '"' + tree_two + '"') else ""} \
      ~{true="--absolute_path" false="" absolute_path} \
      ~{true="--force_nucleotides" false="" force_nucleotides} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    specify_output_file: "Specify the output file where to write the configurations (default: None)"
    db_type: "Specify the type of the database, where \"n\" stands for nucleotides and \"a\" for amino acids (default: None)"
    db_dna: "Add the \"db_dna\" section of the selected software that will be used for building the indexed database (default: None)"
    db_aa: "Add the \"db_aa\" section of the selected software that will be used for building the indexed database (default: None)"
    map_dna: "Add the \"map_dna\" section of the selected software that will be used for mapping the database against the input genomes (default: None)"
    map_aa: "Add the \"map_aa\" section of the selected software that will be used for mapping the database against the input proteomes (default: None)"
    msa: "Add the \"msa\" section of the selected software that will be used for producing the MSAs (default: None)"
    trim: "Add the \"trim\" section of the selected software that will be used for the gappy regions removal of the MSAs (default: None)"
    gene_tree_one: "Add the \"gene_tree1\" section of the selected software that will be used for building the phylogenies for the markers in the database (default: None)"
    gene_tree_two: "Add the \"gene_tree2\" section of the selected software that will be used for refining the phylogenies previously built with what specified in the \"gene_tree1\" section (default: None)"
    tree_one: "Add the \"tree1\" section of the selected software that will be used for building the first phylogeny (default: None)"
    tree_two: "Add the \"tree2\" section of the selected software that will be used for refining the phylogeny previously built with what specified in the \"tree1\" section (default: None)"
    absolute_path: "Write the absolute path to the executable instead of the executable name as found in the system path environment (default: False)"
    force_nucleotides: "If specified sets parameters for phylogenetic analysis software so that they use nucleotide sequences, even in the case of a database of amino acids (default: None)"
    overwrite: "Overwrite output file if it exists (default: False)"
    verbose: "Prints more stuff (default: False)"
  }
}