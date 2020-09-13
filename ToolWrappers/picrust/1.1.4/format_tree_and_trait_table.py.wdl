version 1.0

task FormatTreeAndTraitTablepy {
  input {
    Boolean? verbose
    File? tree_to_trait_mapping
    Directory? output_dir
    String? input_table_delimiter
    String? output_table_delimiter
    Boolean? suppress_bifurcating
    Boolean? convert_to_nexus
    Boolean? convert_values_to_ints
    Boolean? no_minimum_branch_length
    Boolean? supress_tree_filter
    Boolean? supress_table_filter
    Boolean? add_branch_length_to_root
    String? limit_tree_to_otus_fp
    String? input_tree
    String? input_trait_table
  }
  command <<<
    format_tree_and_trait_table_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(tree_to_trait_mapping) then ("--tree_to_trait_mapping " +  '"' + tree_to_trait_mapping + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(input_table_delimiter) then ("--input_table_delimiter " +  '"' + input_table_delimiter + '"') else ""} \
      ~{if defined(output_table_delimiter) then ("--output_table_delimiter " +  '"' + output_table_delimiter + '"') else ""} \
      ~{if (suppress_bifurcating) then "--suppress_bifurcating" else ""} \
      ~{if (convert_to_nexus) then "--convert_to_nexus" else ""} \
      ~{if (convert_values_to_ints) then "--convert_values_to_ints" else ""} \
      ~{if (no_minimum_branch_length) then "--no_minimum_branch_length" else ""} \
      ~{if (supress_tree_filter) then "--supress_tree_filter" else ""} \
      ~{if (supress_table_filter) then "--supress_table_filter" else ""} \
      ~{if (add_branch_length_to_root) then "--add_branch_length_to_root" else ""} \
      ~{if defined(limit_tree_to_otus_fp) then ("--limit_tree_to_otus_fp " +  '"' + limit_tree_to_otus_fp + '"') else ""} \
      ~{if defined(input_tree) then ("--input_tree " +  '"' + input_tree + '"') else ""} \
      ~{if defined(input_trait_table) then ("--input_trait_table " +  '"' + input_trait_table + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    tree_to_trait_mapping: "a two-column, tab-delimited text file mapping\\nidentifiers in the tree(column 1) to identifiers in\\nthe trait table (column 2). If supplied, the\\nidentifiers in the trait table will be converted to\\nmatch the identifiers in the tree. (This mapping does\\nnot need to be supplied if the tree and trait table\\nalready use a common set of identifiers.) [default:\\nnone]"
    output_dir: "the output directory [default: ./formatted/]"
    input_table_delimiter: "The character delimiting fields in the input trait\\ntable. Valid choices are:tab,space,comma [default:\\ntab]"
    output_table_delimiter: "The character delimiting fields in the output trait\\ntable. Valid choices are:tab,space,comma [default:\\ntab]"
    suppress_bifurcating: "If set, don't ensure that tree is fully bifurcating.\\n[default: False]"
    convert_to_nexus: "Convert tree to NEXUS format, including a translate\\nblock mapping tip names to numbers. [default: False]"
    convert_values_to_ints: "Convert the values for each character state to\\nintegers. [default: False]"
    no_minimum_branch_length: "If set, don't ensure all branches have at least a\\nsmall but non-zero branchlength. [default: False]"
    supress_tree_filter: "If set, don't filter out tree tips that aren't listed\\nin the trait table [default: False]"
    supress_table_filter: "If set, don't filter out trait table entries that\\naren't listed in the tree [default: False]"
    add_branch_length_to_root: "Add a short branch to the root node (this is required\\nby some phylogeny programs).  The length of the branch\\nis determined by the min_branch_length option\\n[default: False]"
    limit_tree_to_otus_fp: "Will prune the reference tree to contain only those\\ntips that are within the given OTU table"
    input_tree: "the input tree (Newick format) [REQUIRED]"
    input_trait_table: "the input trait table (QIIME OTU table format)\\n[REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}