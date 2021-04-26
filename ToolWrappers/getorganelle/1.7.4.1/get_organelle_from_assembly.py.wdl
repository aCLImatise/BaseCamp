version 1.0

task GetOrganelleFromAssemblypy {
  input {
    String? flag_fungusmtfungus_rna
    File? input_assembly_graph
    Directory? output_directory_overwriting
    Int? max_depth
    File? config_dir
    Int? genes
    Int? ex_genes
    Boolean? no_slim
    String? slim_options
    Int? max_slim_extending_len
    File? spades_out_dir
    Float? depth_factor
    Float? type_f
    Float? contamination_depth
    Float? contamination_similarity
    Boolean? no_degenerate
    Float? degenerate_depth
    Float? degenerate_similarity
    File? disentangle_time_limit
    Int? expected_max_size
    Int? expected_min_size
    Boolean? reverse_lsc
    Int? max_paths_num
    Boolean? keep_all_polymorphic
    Int? min_sigma
    Int? max_multiplicity
    String? maximum_threads_use
    String? prefix
    File? which_bandage
    Boolean? keep_temp
    Boolean? continue
    Boolean? overwrite
    Int? random_seed
    Boolean? verbose
    Int? min_depth
    String exists_dot
    Directory directory_dot
    String log_handler_dot
  }
  command <<<
    get_organelle_from_assembly_py \
      ~{exists_dot} \
      ~{directory_dot} \
      ~{log_handler_dot} \
      ~{if defined(flag_fungusmtfungus_rna) then ("-F " +  '"' + flag_fungusmtfungus_rna + '"') else ""} \
      ~{if defined(input_assembly_graph) then ("-g " +  '"' + input_assembly_graph + '"') else ""} \
      ~{if defined(output_directory_overwriting) then ("-o " +  '"' + output_directory_overwriting + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(config_dir) then ("--config-dir " +  '"' + config_dir + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(ex_genes) then ("--ex-genes " +  '"' + ex_genes + '"') else ""} \
      ~{if (no_slim) then "--no-slim" else ""} \
      ~{if defined(slim_options) then ("--slim-options " +  '"' + slim_options + '"') else ""} \
      ~{if defined(max_slim_extending_len) then ("--max-slim-extending-len " +  '"' + max_slim_extending_len + '"') else ""} \
      ~{if defined(spades_out_dir) then ("--spades-out-dir " +  '"' + spades_out_dir + '"') else ""} \
      ~{if defined(depth_factor) then ("--depth-factor " +  '"' + depth_factor + '"') else ""} \
      ~{if defined(type_f) then ("--type-f " +  '"' + type_f + '"') else ""} \
      ~{if defined(contamination_depth) then ("--contamination-depth " +  '"' + contamination_depth + '"') else ""} \
      ~{if defined(contamination_similarity) then ("--contamination-similarity " +  '"' + contamination_similarity + '"') else ""} \
      ~{if (no_degenerate) then "--no-degenerate" else ""} \
      ~{if defined(degenerate_depth) then ("--degenerate-depth " +  '"' + degenerate_depth + '"') else ""} \
      ~{if defined(degenerate_similarity) then ("--degenerate-similarity " +  '"' + degenerate_similarity + '"') else ""} \
      ~{if defined(disentangle_time_limit) then ("--disentangle-time-limit " +  '"' + disentangle_time_limit + '"') else ""} \
      ~{if defined(expected_max_size) then ("--expected-max-size " +  '"' + expected_max_size + '"') else ""} \
      ~{if defined(expected_min_size) then ("--expected-min-size " +  '"' + expected_min_size + '"') else ""} \
      ~{if (reverse_lsc) then "--reverse-lsc" else ""} \
      ~{if defined(max_paths_num) then ("--max-paths-num " +  '"' + max_paths_num + '"') else ""} \
      ~{if (keep_all_polymorphic) then "--keep-all-polymorphic" else ""} \
      ~{if defined(min_sigma) then ("--min-sigma " +  '"' + min_sigma + '"') else ""} \
      ~{if defined(max_multiplicity) then ("--max-multiplicity " +  '"' + max_multiplicity + '"') else ""} \
      ~{if defined(maximum_threads_use) then ("-t " +  '"' + maximum_threads_use + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(which_bandage) then ("--which-bandage " +  '"' + which_bandage + '"') else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  parameter_meta {
    flag_fungusmtfungus_rna: "This flag should be followed with embplant_pt\\n(embryophyta plant plastome), other_pt (non-\\nembryophyta plant plastome), embplant_mt (plant\\nmitochondrion), embplant_nr (plant nuclear ribosomal\\nRNA), animal_mt (animal mitochondrion), fungus_mt\\n(fungus mitochondrion), fungus_nr (fungus nuclear\\nribosomal RNA), or embplant_mt,other_pt,fungus_mt (the\\ncombination of any of above organelle genomes split by\\ncomma(s), which might be computationally more\\nintensive than separate runs), or anonym (uncertain\\norganelle genome type). The anonym should be used with\\ncustomized seed and label databases ('-s' and '--\\ngenes')."
    input_assembly_graph: "Input assembly graph (fastg/gfa) file. The format will\\nbe recognized by the file name suffix."
    output_directory_overwriting: "Output directory. Overwriting files if directory"
    max_depth: "Input a float or integer number. filter graph file by\\na maximum depth. Default: inf."
    config_dir: "The directory where the configuration file and default\\ndatabases were placed. The default value also can be\\nchanged by adding 'export GETORG_PATH=your_favor' to\\nthe shell script (e.g. ~/.bash_profile or ~/.bashrc)\\nDefault: /root/.GetOrganelle"
    genes: "Followed with a customized database (a fasta file or\\nthe base name of a blast database) containing or made\\nof ONE set of protein coding genes and ribosomal RNAs\\nextracted from ONE reference genome that you want to\\nassemble. Should be a list of databases split by\\ncomma(s) on a multi-organelle mode, with the same list\\nlength to organelle_type (followed by '-F'). This is\\noptional for any organelle mentioned in '-F' but\\nrequired for 'anonym'. By default, certain database(s)\\nin /root/.GetOrganelle/LabelDatabase would be used\\ncontingent on the organelle types chosen (-F). The\\ndefault value no longer holds when '--genes' or '--ex-\\ngenes' is used."
    ex_genes: "This is optional and Not suggested, since non-target\\ncontigs could contribute information for better\\ndownstream coverage-based clustering. Followed with a\\ncustomized database (a fasta file or the base name of\\na blast database) containing or made of protein coding\\ngenes and ribosomal RNAs extracted from reference\\ngenome(s) that you want to exclude. Could be a list of\\ndatabases split by comma(s) but NOT required to have\\nthe same list length to organelle_type (followed by\\n'-F'). The default value no longer holds when '--\\ngenes' or '--ex-genes' is used."
    no_slim: "Disable slimming process and directly disentangle the\\noriginal assembly graph. Default: False"
    slim_options: "Other options for calling slim_graph.py"
    max_slim_extending_len: "This is used to limit the extending length, below\\nwhich a \\\"non-hit contig\\\" is allowed to be distant from\\na \\\"hit contig\\\" to be kept. See more under\\nslim_graph.py:--max-slim-extending-len. Default: 15000\\n(-F embplant_pt), 50000 (-F\\nembplant_mt/fungus_mt/other_pt), 12500 (-F\\nembplant_nr/fungus_nr/animal_mt),\\nmaximum_of_type1_type2 (-F type1,type2), inf (-F\\nanonym)"
    spades_out_dir: "Input spades output directory with 'scaffolds.fasta'\\nand 'scaffolds.paths', which are used for scaffolding\\ndisconnected contigs with GAPs. Default: disabled"
    depth_factor: "Depth factor for differentiate genome type of contigs.\\nThe genome type of contigs are determined by blast.\\nDefault: 10.0"
    type_f: "Type factor for identifying contig type tag when\\nmultiple tags exist in one contig. Default:3.0"
    contamination_depth: "Depth factor for confirming contamination in parallel\\ncontigs. Default: 3.0"
    contamination_similarity: "Similarity threshold for confirming contaminating\\ncontigs. Default: 0.9"
    no_degenerate: "Disable making consensus from parallel contig based on\\nnucleotide degenerate table."
    degenerate_depth: "Depth factor for confirming parallel contigs. Default:\\n1.5"
    degenerate_similarity: "Similarity threshold for confirming parallel contigs.\\nDefault: 0.98"
    disentangle_time_limit: "Time limit (second) for each try of disentangling a\\ngraph file as a circular genome. Disentangling a graph\\nas contigs is not limited. Default: 3600"
    expected_max_size: "Expected maximum target genome size(s) for\\ndisentangling. Should be a list of INTEGER numbers\\nsplit by comma(s) on a multi-organelle mode, with the\\nsame list length to organelle_type (followed by '-F').\\nDefault: 250000 (-F embplant_pt/fungus_mt), 25000 (-F\\nembplant_nr/fungus_nr/animal_mt), 1000000 (-F\\nembplant_mt/other_pt), 1000000,1000000,250000 (-F\\nother_pt,embplant_mt,fungus_mt)"
    expected_min_size: "Expected minimum target genome size(s) for\\ndisentangling. Should be a list of INTEGER numbers\\nsplit by comma(s) on a multi-organelle mode, with the\\nsame list length to organelle_type (followed by '-F').\\nDefault: 10000 for all."
    reverse_lsc: "For '-F embplant_pt' with complete circular result, by\\ndefault, the direction of the starting contig (usually\\nthe LSC contig) is determined as the direction with\\nless ORFs. Choose this option to reverse the direction\\nof the starting contig when result is circular.\\nActually, both directions are biologically equivalent\\nto each other. The reordering of the direction is only\\nfor easier downstream analysis."
    max_paths_num: "Repeats would dramatically increase the number of\\npotential isomers (paths). This option was used to\\nexport a certain amount of paths out of all possible\\npaths per assembly graph. Default: 1000"
    keep_all_polymorphic: "By default, this script would pick the contig with\\nhighest coverage among all parallel (polymorphic)\\ncontigs when degenerating was not applicable. Choose\\nthis flag to export all combinations."
    min_sigma: "Minimum deviation factor for excluding non-target\\ncontigs. Default:0.1"
    max_multiplicity: "Maximum multiplicity of contigs for disentangling\\ngenome paths. Should be 1~12. Default:8"
    maximum_threads_use: "Maximum threads to use."
    prefix: "Add extra prefix to resulting files under the output"
    which_bandage: "Assign the path to bandage binary file if not added to\\nthe path. Default: try $PATH"
    keep_temp: "Choose to keep the running temp/index files."
    continue: "Several check points based on files produced, rather\\nthan on the log file, so keep in mind that this script\\nwill not detect the difference between this input\\nparameters and the previous ones."
    overwrite: "Overwrite previous file if existed."
    random_seed: "Default: 12345"
    verbose: "Verbose output. Choose to enable verbose running"
    min_depth: ""
    exists_dot: "--min-depth MIN_DEPTH"
    directory_dot: "--which-blast WHICH_BLAST"
    log_handler_dot: "-h                    print brief introduction for frequently-used options."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_overwriting = "${in_output_directory_overwriting}"
  }
}