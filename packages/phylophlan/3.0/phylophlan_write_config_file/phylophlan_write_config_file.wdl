version 1.0

task PhylophlanWriteConfigFile {
  input {
    File? specify_output_file
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
    File? overwrite
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
      ~{if (absolute_path) then "--absolute_path" else ""} \
      ~{if (force_nucleotides) then "--force_nucleotides" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    specify_output_file: "Specify the output file where to write the\\nconfigurations (default: None)"
    db_type: "Specify the type of the database, where \\\"n\\\" stands for\\nnucleotides and \\\"a\\\" for amino acids (default: None)"
    db_dna: "Add the \\\"db_dna\\\" section of the selected software that\\nwill be used for building the indexed database\\n(default: None)"
    db_aa: "Add the \\\"db_aa\\\" section of the selected software that\\nwill be used for building the indexed database\\n(default: None)"
    map_dna: "Add the \\\"map_dna\\\" section of the selected software\\nthat will be used for mapping the database against the\\ninput genomes (default: None)"
    map_aa: "Add the \\\"map_aa\\\" section of the selected software that\\nwill be used for mapping the database against the\\ninput proteomes (default: None)"
    msa: "Add the \\\"msa\\\" section of the selected software that\\nwill be used for producing the MSAs (default: None)"
    trim: "Add the \\\"trim\\\" section of the selected software that\\nwill be used for the gappy regions removal of the MSAs\\n(default: None)"
    gene_tree_one: "Add the \\\"gene_tree1\\\" section of the selected software\\nthat will be used for building the phylogenies for the\\nmarkers in the database (default: None)"
    gene_tree_two: "Add the \\\"gene_tree2\\\" section of the selected software\\nthat will be used for refining the phylogenies\\npreviously built with what specified in the\\n\\\"gene_tree1\\\" section (default: None)"
    tree_one: "Add the \\\"tree1\\\" section of the selected software that\\nwill be used for building the first phylogeny\\n(default: None)"
    tree_two: "Add the \\\"tree2\\\" section of the selected software that\\nwill be used for refining the phylogeny previously\\nbuilt with what specified in the \\\"tree1\\\" section\\n(default: None)"
    absolute_path: "Write the absolute path to the executable instead of\\nthe executable name as found in the system path\\nenvironment (default: False)"
    force_nucleotides: "If specified sets parameters for phylogenetic analysis\\nsoftware so that they use nucleotide sequences, even\\nin the case of a database of amino acids (default:\\nNone)"
    overwrite: "Overwrite output file if it exists (default: False)"
    verbose: "Prints more stuff (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
    File out_overwrite = "${in_overwrite}"
  }
}