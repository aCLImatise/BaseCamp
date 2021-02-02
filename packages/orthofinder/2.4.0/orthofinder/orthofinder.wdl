version 1.0

task Orthofinder {
  input {
    Int? number_parallel_sequence
    Int? number_parallel_analysis
    String? method_gene_tree
    String? sequence_search_program
    String? msa_program_requires
    String? tree_inference_method
    File? userspecified_rooted_species
    Int? mcl_inflation_parameter
    File? info_outputting_results
    String? write_temporary_files
    Boolean? only_perform_search
    Boolean? add_species_names
    Directory? name_append_results
    Directory? nondefault_results_directory
    Boolean? op
    Boolean? og
    Boolean? os
    Boolean? oa
    Boolean? ot
    Boolean? dir_start_orthofinder
    String? fg
    String? ft
  }
  command <<<
    orthofinder \
      ~{if defined(number_parallel_sequence) then ("-t " +  '"' + number_parallel_sequence + '"') else ""} \
      ~{if defined(number_parallel_analysis) then ("-a " +  '"' + number_parallel_analysis + '"') else ""} \
      ~{if defined(method_gene_tree) then ("-M " +  '"' + method_gene_tree + '"') else ""} \
      ~{if defined(sequence_search_program) then ("-S " +  '"' + sequence_search_program + '"') else ""} \
      ~{if defined(msa_program_requires) then ("-A " +  '"' + msa_program_requires + '"') else ""} \
      ~{if defined(tree_inference_method) then ("-T " +  '"' + tree_inference_method + '"') else ""} \
      ~{if defined(userspecified_rooted_species) then ("-s " +  '"' + userspecified_rooted_species + '"') else ""} \
      ~{if defined(mcl_inflation_parameter) then ("-I " +  '"' + mcl_inflation_parameter + '"') else ""} \
      ~{if defined(info_outputting_results) then ("-x " +  '"' + info_outputting_results + '"') else ""} \
      ~{if defined(write_temporary_files) then ("-p " +  '"' + write_temporary_files + '"') else ""} \
      ~{if (only_perform_search) then "-1" else ""} \
      ~{if (add_species_names) then "-X" else ""} \
      ~{if defined(name_append_results) then ("-n " +  '"' + name_append_results + '"') else ""} \
      ~{if defined(nondefault_results_directory) then ("-o " +  '"' + nondefault_results_directory + '"') else ""} \
      ~{if (op) then "-op" else ""} \
      ~{if (og) then "-og" else ""} \
      ~{if (os) then "-os" else ""} \
      ~{if (oa) then "-oa" else ""} \
      ~{if (ot) then "-ot" else ""} \
      ~{if (dir_start_orthofinder) then "-b" else ""} \
      ~{if defined(fg) then ("-fg " +  '"' + fg + '"') else ""} \
      ~{if defined(ft) then ("-ft " +  '"' + ft + '"') else ""}
  >>>
  parameter_meta {
    number_parallel_sequence: "Number of parallel sequence search threads [Default = 8]"
    number_parallel_analysis: "Number of parallel analysis threads [Default = 1]"
    method_gene_tree: "Method for gene tree inference. Options 'dendroblast' & 'msa'\\n[Default = dendroblast]"
    sequence_search_program: "Sequence search program [Default = diamond]\\nOptions: blast, diamond, blast_gz, mmseqs"
    msa_program_requires: "MSA program, requires '-M msa' [Default = mafft]\\nOptions: mafft, muscle"
    tree_inference_method: "Tree inference method, requires '-M msa' [Default = fasttree]\\nOptions: fasttree, raxml, raxml-ng, iqtree"
    userspecified_rooted_species: "User-specified rooted species tree"
    mcl_inflation_parameter: "MCL inflation parameter [Default = 1.5]"
    info_outputting_results: "Info for outputting results in OrthoXML format"
    write_temporary_files: "Write the temporary pickle files to <dir>"
    only_perform_search: "Only perform one-way sequence search"
    add_species_names: "Don't add species names to sequence IDs"
    name_append_results: "Name to append to the results directory"
    nondefault_results_directory: "Non-default results directory"
    op: "Stop after preparing input files for BLAST"
    og: "Stop after inferring orthogroups"
    os: "Stop after writing sequence files for orthogroups\\n(requires '-M msa')"
    oa: "Stop after inferring alignments for orthogroups\\n(requires '-M msa')"
    ot: "Stop after inferring gene trees for orthogroups"
    dir_start_orthofinder: "<dir>         Start OrthoFinder from pre-computed BLAST results in <dir>"
    fg: "Start OrthoFinder from pre-computed orthogroups in <dir>"
    ft: "Start OrthoFinder from pre-computed gene trees in <dir>"
  }
  output {
    File out_stdout = stdout()
  }
}