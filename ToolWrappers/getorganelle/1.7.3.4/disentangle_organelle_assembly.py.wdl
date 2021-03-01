version 1.0

task DisentangleOrganelleAssemblypy {
  input {
    File? input_fastg_format
    File? input_tab_format
    Directory? output_directory
    String? organelle_type_embplantptotherptembplantmtembplantnranimalmtfungusmtfungusnranonym
    Boolean? linear
    Float? weight_f
    Float? depth_f
    Float? type_f
    Float? contamination_depth
    Float? contamination_similarity
    Boolean? no_degenerate
    Float? degenerate_depth
    Float? degenerate_similarity
    Int? expected_max_size
    Int? expected_min_size
    Boolean? reverse_lsc
    Int? max_paths_num
    Boolean? keep_all_polymorphic
    Int? min_sigma
    Int? min_depth
    Int? max_depth
    Int? max_multiplicity
    Directory? prefix
    Boolean? keep_temp
    Int? time_limit
    Int? random_seed
    Boolean? continue
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    disentangle_organelle_assembly_py \
      ~{if defined(input_fastg_format) then ("-g " +  '"' + input_fastg_format + '"') else ""} \
      ~{if defined(input_tab_format) then ("-t " +  '"' + input_tab_format + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(organelle_type_embplantptotherptembplantmtembplantnranimalmtfungusmtfungusnranonym) then ("-F " +  '"' + organelle_type_embplantptotherptembplantmtembplantnranimalmtfungusmtfungusnranonym + '"') else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(weight_f) then ("--weight-f " +  '"' + weight_f + '"') else ""} \
      ~{if defined(depth_f) then ("--depth-f " +  '"' + depth_f + '"') else ""} \
      ~{if defined(type_f) then ("--type-f " +  '"' + type_f + '"') else ""} \
      ~{if defined(contamination_depth) then ("--contamination-depth " +  '"' + contamination_depth + '"') else ""} \
      ~{if defined(contamination_similarity) then ("--contamination-similarity " +  '"' + contamination_similarity + '"') else ""} \
      ~{if (no_degenerate) then "--no-degenerate" else ""} \
      ~{if defined(degenerate_depth) then ("--degenerate-depth " +  '"' + degenerate_depth + '"') else ""} \
      ~{if defined(degenerate_similarity) then ("--degenerate-similarity " +  '"' + degenerate_similarity + '"') else ""} \
      ~{if defined(expected_max_size) then ("--expected-max-size " +  '"' + expected_max_size + '"') else ""} \
      ~{if defined(expected_min_size) then ("--expected-min-size " +  '"' + expected_min_size + '"') else ""} \
      ~{if (reverse_lsc) then "--reverse-lsc" else ""} \
      ~{if defined(max_paths_num) then ("--max-paths-num " +  '"' + max_paths_num + '"') else ""} \
      ~{if (keep_all_polymorphic) then "--keep-all-polymorphic" else ""} \
      ~{if defined(min_sigma) then ("--min-sigma " +  '"' + min_sigma + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(max_multiplicity) then ("--max-multiplicity " +  '"' + max_multiplicity + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if defined(time_limit) then ("--time-limit " +  '"' + time_limit + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    input_fastg_format: "input fastg format file."
    input_tab_format: "input tab format file (*.csv; the postfix 'csv' was in\\nconformity with Bandage) produced by slim_graph.py."
    output_directory: "output directory."
    organelle_type_embplantptotherptembplantmtembplantnranimalmtfungusmtfungusnranonym: "organelle type: embplant_pt/other_pt/embplant_mt/embpl\\nant_nr/animal_mt/fungus_mt/fungus_nr/anonym."
    linear: "By default, this script would only disentangle the\\ncircular graph (the complete circular organelle\\ngenome), and would directly give up linear/broken\\ngraphs). Choose this option to try for linear/broken\\ncases."
    weight_f: "weight factor for excluding non-target contigs.\\nDefault:100.0"
    depth_f: "Depth factor for excluding non-target contigs.\\nDefault:10.0"
    type_f: "Type factor for identifying genome type tag.\\nDefault:3.0"
    contamination_depth: "Depth factor for confirming contaminating contigs.\\nDefault:3.0"
    contamination_similarity: "Similarity threshold for confirming contaminating\\ncontigs. Default:0.9"
    no_degenerate: "Disable making consensus from parallel contig based on\\nnucleotide degenerate table."
    degenerate_depth: "Depth factor for confirming parallel contigs.\\nDefault:1.5"
    degenerate_similarity: "Similarity threshold for confirming parallel contigs.\\nDefault:0.98"
    expected_max_size: "Expected maximum target genome size. Default: 200000\\n(-F embplant_pt/fungus_mt), 25000 (-F\\nembplant_nr/animal_mt/fungus_nr), 600000 (-F\\nembplant_mt/other_pt)"
    expected_min_size: "Expected mininum target genome size. Default: 10000"
    reverse_lsc: "For '-F embplant_pt' with complete circular result, by\\ndefault, the direction of the starting contig (usually\\nthe LSC contig) is determined as the direction with\\nless ORFs. Choose this option to reverse the direction\\nof the starting contig when result is circular.\\nActually, both directions are biologically equivalent\\nto each other. The reordering of the direction is only\\nfor easier downstream analysis."
    max_paths_num: "Repeats would dramatically increase the number of\\npotential isomers (paths). This option was used to\\nexport a certain amount of paths out of all possible\\npaths per assembly graph. Default: 1000"
    keep_all_polymorphic: "By default, this script would pick the contig with\\nhighest coverage among all parallel (polymorphic)\\ncontigs when degenerating was not applicable. Choose\\nthis flag to export all combinations."
    min_sigma: "Minimum deviation factor for excluding non-target\\ncontigs. Default:0.1"
    min_depth: "Minimum coverage for a contig to be included in\\ndisentangling. Default:0.0"
    max_depth: "Minimum coverage for a contig to be included in\\ndisentangling. Default:inf"
    max_multiplicity: "Maximum multiplicity of contigs for disentangling\\ngenome paths. Should be 1~12. Default:8"
    prefix: "Prefix of output files inside output directory.\\nDefault:target"
    keep_temp: "export intermediate graph file."
    time_limit: "time limit for the disentangling process. Default:3600"
    random_seed: "Random seed (only for disentangling at this moment).\\nDefault: 12345"
    continue: "continue mode."
    verbose: "verbose logging."
    debug: "for debug."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_prefix = "${in_prefix}"
  }
}