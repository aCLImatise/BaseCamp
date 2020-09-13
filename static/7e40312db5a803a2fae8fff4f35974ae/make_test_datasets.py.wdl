version 1.0

task MakeTestDatasetspy {
  input {
    Boolean? verbose
    Directory? output_dir
    Float? min_dist
    Boolean? suppress_tree_modification
    Float? dist_increment
    Int? max_dist
    String? limit_to_tips
    String? method
    String? input_trait_table
    String? input_tree
  }
  command <<<
    make_test_datasets_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(min_dist) then ("--min_dist " +  '"' + min_dist + '"') else ""} \
      ~{if (suppress_tree_modification) then "--suppress_tree_modification" else ""} \
      ~{if defined(dist_increment) then ("--dist_increment " +  '"' + dist_increment + '"') else ""} \
      ~{if defined(max_dist) then ("--max_dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(limit_to_tips) then ("--limit_to_tips " +  '"' + limit_to_tips + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(input_trait_table) then ("--input_trait_table " +  '"' + input_trait_table + '"') else ""} \
      ~{if defined(input_tree) then ("--input_tree " +  '"' + input_tree + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_dir: "the output directory.  Duplicate trees, trait tables,\\nexpected values and prediction files will be saved\\nhere.[default:./test_datasets/]"
    min_dist: "the minimum phylogenetic distance to use with the\\nholdout method, if applicable.  Usually\\n0.0.[default:0.0]"
    suppress_tree_modification: "If passed, modify only the trait table, not the tree .\\n[default: False]"
    dist_increment: "the phylogenetic distance increment to use with the\\nholdout method, if applicable.[default:0.03]"
    max_dist: "the maximum phylogenetic distance to use with the\\nholdout method, if applicable.[default:0.45]"
    limit_to_tips: "if specified, limit test dataset generation to\\nspecified tips (comma-separated).[default:]"
    method: "The test method to use in generating test data.  Valid\\nchoices are:exclude_tips_by_distance,randomize_tip_lab\\nels_by_distance,collapse_tree_by_distance [default:\\nexclude_tips_by_distance]"
    input_trait_table: "the input trait table. [REQUIRED]"
    input_tree: "the input tree in Newick format [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}