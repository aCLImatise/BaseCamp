version 1.0

task GetOrganelleFromAssembly.py {
  input {
    String? flag_should_followed
    String? input_assembly_graph
    String? output_directory_overwriting
    Int? min_depth
    Int? max_depth
    String? genes
    String? ex_genes
    Boolean? no_slim
    String? slim_options
    String? depth_factor
    String? type_f
    String? contamination_depth
    String? contamination_similarity
    Boolean? no_degenerate
    String? degenerate_depth
    String? degenerate_similarity
    String? disentangle_time_limit
    String? expected_max_size
    String? expected_min_size
    Boolean? reverse_lsc
    Int? max_paths_num
    Boolean? keep_all_polymorphic
    Int? min_sigma
    Int? max_multiplicity
    String? maximum_threads_use
    String? prefix
    String? which_blast
    String? which_bandage
    Boolean? keep_temp
    Boolean? continue
    String? random_seed
    Boolean? verbose
    Boolean? help
  }
  command <<<
    get_organelle_from_assembly.py \
      ~{if defined(flag_should_followed) then ("-F " +  '"' + flag_should_followed + '"') else ""} \
      ~{if defined(input_assembly_graph) then ("-g " +  '"' + input_assembly_graph + '"') else ""} \
      ~{if defined(output_directory_overwriting) then ("-o " +  '"' + output_directory_overwriting + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(ex_genes) then ("--ex-genes " +  '"' + ex_genes + '"') else ""} \
      ~{true="--no-slim" false="" no_slim} \
      ~{if defined(slim_options) then ("--slim-options " +  '"' + slim_options + '"') else ""} \
      ~{if defined(depth_factor) then ("--depth-factor " +  '"' + depth_factor + '"') else ""} \
      ~{if defined(type_f) then ("--type-f " +  '"' + type_f + '"') else ""} \
      ~{if defined(contamination_depth) then ("--contamination-depth " +  '"' + contamination_depth + '"') else ""} \
      ~{if defined(contamination_similarity) then ("--contamination-similarity " +  '"' + contamination_similarity + '"') else ""} \
      ~{true="--no-degenerate" false="" no_degenerate} \
      ~{if defined(degenerate_depth) then ("--degenerate-depth " +  '"' + degenerate_depth + '"') else ""} \
      ~{if defined(degenerate_similarity) then ("--degenerate-similarity " +  '"' + degenerate_similarity + '"') else ""} \
      ~{if defined(disentangle_time_limit) then ("--disentangle-time-limit " +  '"' + disentangle_time_limit + '"') else ""} \
      ~{if defined(expected_max_size) then ("--expected-max-size " +  '"' + expected_max_size + '"') else ""} \
      ~{if defined(expected_min_size) then ("--expected-min-size " +  '"' + expected_min_size + '"') else ""} \
      ~{true="--reverse-lsc" false="" reverse_lsc} \
      ~{if defined(max_paths_num) then ("--max-paths-num " +  '"' + max_paths_num + '"') else ""} \
      ~{true="--keep-all-polymorphic" false="" keep_all_polymorphic} \
      ~{if defined(min_sigma) then ("--min-sigma " +  '"' + min_sigma + '"') else ""} \
      ~{if defined(max_multiplicity) then ("--max-multiplicity " +  '"' + max_multiplicity + '"') else ""} \
      ~{if defined(maximum_threads_use) then ("-t " +  '"' + maximum_threads_use + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(which_bandage) then ("--which-bandage " +  '"' + which_bandage + '"') else ""} \
      ~{true="--keep-temp" false="" keep_temp} \
      ~{true="--continue" false="" continue} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--help" false="" help}
  >>>
  parameter_meta {
    flag_should_followed: "This flag should be followed with embplant_pt (embryophyta plant plastome), other_pt (non- embryophyta plant plastome), embplant_mt (plant mitochondrion), embplant_nr (plant nuclear ribosomal RNA), animal_mt (animal mitochondrion), fungus_mt (fungus mitochondrion), or embplant_mt,other_pt,fungus_mt (the combination of any of above organelle genomes split by comma(s), which might be computationally more intensive than separate runs), or anonym (uncertain organelle genome type, with customized gene database ('--genes'), which is suggested only when the above database is genetically distant from your sample) or raw (disentangle the raw graph directly without tagging)."
    input_assembly_graph: "Input assembly graph (fastg/gfa) file."
    output_directory_overwriting: "Output directory. Overwriting files if directory exists."
    min_depth: "Input a float or integer number. Filter graph file by a minimum depth. Default: 0.0."
    max_depth: "Input a float or integer number. filter graph file by a maximum depth. Default: inf."
    genes: "Followed with a customized database (a fasta file or the base name of a blast database) containing or made of ONE set of protein coding genes and ribosomal RNAs extracted from ONE reference genome that you want to assemble. Should be a list of databases split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). This is optional for any organelle mentioned in '-F' but required for 'anonym'. By default, certain database(s) in /tmp/tmpkfo1qzio/lib/python3.8/site- packages/GetOrganelleLib/LabelDatabase would be used contingent on the organelle types chosen (-F). The default value no longer holds when '--genes' or '--ex- genes' is used."
    ex_genes: "This is optional and Not suggested, since non-target contigs could contribute information for better downstream coverage-based clustering. Followed with a customized database (a fasta file or the base name of a blast database) containing or made of protein coding genes and ribosomal RNAs extracted from reference genome(s) that you want to exclude. Could be a list of databases split by comma(s) but NOT required to have the same list length to organelle_type (followed by '-F'). The default value no longer holds when '-- genes' or '--ex-genes' is used."
    no_slim: "Disable slimming process and directly disentangle the original assembly graph. Default: False"
    slim_options: "Other options for calling slim_fastg.py"
    depth_factor: "Depth factor for differentiate genome type of contigs. The genome type of contigs are determined by blast. Default: 10.0"
    type_f: "Type factor for identifying contig type tag when multiple tags exist in one contig. Default:3.0"
    contamination_depth: "Depth factor for confirming contamination in parallel contigs. Default: 3.0"
    contamination_similarity: "Similarity threshold for confirming contaminating contigs. Default: 0.9"
    no_degenerate: "Disable making consensus from parallel contig based on nucleotide degenerate table."
    degenerate_depth: "Depth factor for confirming parallel contigs. Default: 1.5"
    degenerate_similarity: "Similarity threshold for confirming parallel contigs. Default: 0.98"
    disentangle_time_limit: "Time limit (second) for each try of disentangling a graph file as a circular genome. Disentangling a graph as contigs is not limited. Default: 3600"
    expected_max_size: "Expected maximum target genome size(s) for disentangling. Should be a list of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). Default: 250000 (-F embplant_pt/fungus_mt), 25000 (-F embplant_nr/animal_mt), 1000000 (-F embplant_mt/other_pt), 1000000,1000000,250000 (-F other_pt,embplant_mt,fungus_mt)"
    expected_min_size: "Expected minimum target genome size(s) for disentangling. Should be a list of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). Default: 10000 for all."
    reverse_lsc: "For '-F embplant_pt' with complete circular result, by default, the direction of the starting contig (usually the LSC contig) is determined as the direction with less ORFs. Choose this option to reverse the direction of the starting contig when result is circular. Actually, both directions are biologically equivalent to each other. The reordering of the direction is only for easier downstream analysis."
    max_paths_num: "Repeats would dramatically increase the number of potential isomers (paths). This option was used to export a certain amount of paths out of all possible paths per assembly graph. Default: 1000"
    keep_all_polymorphic: "By default, this script would pick the contig with highest coverage among all parallel (polymorphic) contigs when degenerating was not applicable. Choose this flag to export all combinations."
    min_sigma: "Minimum deviation factor for excluding non-target contigs. Default:0.1"
    max_multiplicity: "Maximum multiplicity of contigs for disentangling genome paths. Should be 1~12. Default:8"
    maximum_threads_use: "Maximum threads to use."
    prefix: "Add extra prefix to resulting files under the output directory."
    which_blast: "Assign the path to BLAST binary files if not added to the path. Default: try GetOrganelleDep/linux/ncbi- blast first, then $PATH"
    which_bandage: "Assign the path to bandage binary file if not added to the path. Default: try $PATH"
    keep_temp: "Choose to keep the running temp/index files."
    continue: "Several check points based on files produced, rather than on the log file, so keep in mind that this script will not detect the difference between this input parameters and the previous ones."
    random_seed: "Default: 12345"
    verbose: "Verbose output. Choose to enable verbose running log_handler."
    help: "print verbose introduction for all options."
  }
}