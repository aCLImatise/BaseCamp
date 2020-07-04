version 1.0

task DisentangleOrganelleAssembly.py {
  input {
    String? input_fastg_format
    String? input_tab_format
    String? output_directory
    String? organelle_type_embplantptotherptembplantmtembpl
    Boolean? linear
    String? weight_f
    String? depth_f
    String? type_f
    String? contamination_depth
    String? contamination_similarity
    Boolean? no_degenerate
    String? degenerate_depth
    String? degenerate_similarity
    String? expected_max_size
    String? expected_min_size
    Boolean? reverse_lsc
    Int? max_paths_num
    Boolean? keep_all_polymorphic
    Int? min_sigma
    Int? min_depth
    Int? max_depth
    Int? max_multiplicity
    String? prefix
    Boolean? keep_temp
    String? time_limit
    String? random_seed
    Boolean? continue
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    disentangle_organelle_assembly.py \
      ~{if defined(input_fastg_format) then ("-g " +  '"' + input_fastg_format + '"') else ""} \
      ~{if defined(input_tab_format) then ("-t " +  '"' + input_tab_format + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(organelle_type_embplantptotherptembplantmtembpl) then ("-F " +  '"' + organelle_type_embplantptotherptembplantmtembpl + '"') else ""} \
      ~{true="--linear" false="" linear} \
      ~{if defined(weight_f) then ("--weight-f " +  '"' + weight_f + '"') else ""} \
      ~{if defined(depth_f) then ("--depth-f " +  '"' + depth_f + '"') else ""} \
      ~{if defined(type_f) then ("--type-f " +  '"' + type_f + '"') else ""} \
      ~{if defined(contamination_depth) then ("--contamination-depth " +  '"' + contamination_depth + '"') else ""} \
      ~{if defined(contamination_similarity) then ("--contamination-similarity " +  '"' + contamination_similarity + '"') else ""} \
      ~{true="--no-degenerate" false="" no_degenerate} \
      ~{if defined(degenerate_depth) then ("--degenerate-depth " +  '"' + degenerate_depth + '"') else ""} \
      ~{if defined(degenerate_similarity) then ("--degenerate-similarity " +  '"' + degenerate_similarity + '"') else ""} \
      ~{if defined(expected_max_size) then ("--expected-max-size " +  '"' + expected_max_size + '"') else ""} \
      ~{if defined(expected_min_size) then ("--expected-min-size " +  '"' + expected_min_size + '"') else ""} \
      ~{true="--reverse-lsc" false="" reverse_lsc} \
      ~{if defined(max_paths_num) then ("--max-paths-num " +  '"' + max_paths_num + '"') else ""} \
      ~{true="--keep-all-polymorphic" false="" keep_all_polymorphic} \
      ~{if defined(min_sigma) then ("--min-sigma " +  '"' + min_sigma + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(max_multiplicity) then ("--max-multiplicity " +  '"' + max_multiplicity + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--keep-temp" false="" keep_temp} \
      ~{if defined(time_limit) then ("--time-limit " +  '"' + time_limit + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{true="--continue" false="" continue} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_fastg_format: "input fastg format file."
    input_tab_format: "input tab format file (*.csv; the postfix 'csv' was in conformity with Bandage) produced by slim_fastg.py."
    output_directory: "output directory."
    organelle_type_embplantptotherptembplantmtembpl: "organelle type: embplant_pt/other_pt/embplant_mt/embpl ant_nr/animal_mt/fungus_mt/anonym."
    linear: "By default, this script would only disentangle the circular graph (the complete circular organelle genome), and would directly give up linear/broken graphs). Choose this option to try for linear/broken cases."
    weight_f: "weight factor for excluding non-target contigs. Default:100.0"
    depth_f: "Depth factor for excluding non-target contigs. Default:10.0"
    type_f: "Type factor for identifying genome type tag. Default:3.0"
    contamination_depth: "Depth factor for confirming contaminating contigs. Default:3.0"
    contamination_similarity: "Similarity threshold for confirming contaminating contigs. Default:0.9"
    no_degenerate: "Disable making consensus from parallel contig based on nucleotide degenerate table."
    degenerate_depth: "Depth factor for confirming parallel contigs. Default:1.5"
    degenerate_similarity: "Similarity threshold for confirming parallel contigs. Default:0.98"
    expected_max_size: "Expected maximum target genome size. Default: 200000 (-F embplant_pt/fungus_mt), 25000 (-F embplant_nr/animal_mt/fungus_mt), 600000 (-F embplant_mt/other_pt)"
    expected_min_size: "Expected mininum target genome size. Default: 10000"
    reverse_lsc: "For '-F embplant_pt' with complete circular result, by default, the direction of the starting contig (usually the LSC contig) is determined as the direction with less ORFs. Choose this option to reverse the direction of the starting contig when result is circular. Actually, both directions are biologically equivalent to each other. The reordering of the direction is only for easier downstream analysis."
    max_paths_num: "Repeats would dramatically increase the number of potential isomers (paths). This option was used to export a certain amount of paths out of all possible paths per assembly graph. Default: 1000"
    keep_all_polymorphic: "By default, this script would pick the contig with highest coverage among all parallel (polymorphic) contigs when degenerating was not applicable. Choose this flag to export all combinations."
    min_sigma: "Minimum deviation factor for excluding non-target contigs. Default:0.1"
    min_depth: "Minimum coverage for a contig to be included in disentangling. Default:0.0"
    max_depth: "Minimum coverage for a contig to be included in disentangling. Default:inf"
    max_multiplicity: "Maximum multiplicity of contigs for disentangling genome paths. Should be 1~12. Default:8"
    prefix: "Prefix of output files inside output directory. Default:target"
    keep_temp: "export intermediate graph file."
    time_limit: "time limit for the disentangling process. Default:3600"
    random_seed: "Random seed (only for disentangling at this moment). Default: 12345"
    continue: "continue mode."
    verbose: "verbose logging."
    debug: "for debug."
  }
}