version 1.0

task Espoca {
  input {
    String? var_0
    String? var_1
    String? var_2
    String species_parameter_calculation
    String codon_alignment_file
    String phylogenetic_tree_branchlength
  }
  command <<<
    espoca \
      ~{species_parameter_calculation} \
      ~{codon_alignment_file} \
      ~{phylogenetic_tree_branchlength} \
      ~{if defined(var_0) then ("--species " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("--alnfile " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("--treefile " +  '"' + var_2 + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    var_2: ""
    species_parameter_calculation: "species parameter for calculation of the codon usage. type 'augustus --species=help' to see what species are available"
    codon_alignment_file: "codon alignment file in multi fasta format"
    phylogenetic_tree_branchlength: "phylogenetic tree with branchlength in newick format (startree is used if not specified)"
  }
}