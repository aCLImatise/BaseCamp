version 1.0

task HclusterSg {
  input {
    String? minimum_edge_weight
    String? minimum_edge_density
    String? maximum_size
    String? output_file
    Boolean? only_find_hcluster
    Boolean? verbose_mode
    String? breaking_edge_density
    Boolean? the_oncefailinactiveforever_mode
    Boolean? weight_resolution_for
    File? category_file
    String? stringent_level_strictest
  }
  command <<<
    hcluster_sg \
      ~{if defined(minimum_edge_weight) then ("-w " +  '"' + minimum_edge_weight + '"') else ""} \
      ~{if defined(minimum_edge_density) then ("-s " +  '"' + minimum_edge_density + '"') else ""} \
      ~{if defined(maximum_size) then ("-m " +  '"' + maximum_size + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{true="-c" false="" only_find_hcluster} \
      ~{true="-v" false="" verbose_mode} \
      ~{if defined(breaking_edge_density) then ("-b " +  '"' + breaking_edge_density + '"') else ""} \
      ~{true="-O" false="" the_oncefailinactiveforever_mode} \
      ~{true="-r" false="" weight_resolution_for} \
      ~{if defined(category_file) then ("-C " +  '"' + category_file + '"') else ""} \
      ~{if defined(stringent_level_strictest) then ("-L " +  '"' + stringent_level_strictest + '"') else ""}
  >>>
  parameter_meta {
    minimum_edge_weight: "minimum edge weight [20]"
    minimum_edge_density: "minimum edge density between a join [0.50]"
    maximum_size: "maximum size [500]"
    output_file: "output file [stdout]"
    only_find_hcluster: "only find single-linkage clusters (bypass h-cluster)"
    verbose_mode: "verbose mode"
    breaking_edge_density: "breaking edge density [0.10]"
    the_oncefailinactiveforever_mode: "the once-fail-inactive-forever mode"
    weight_resolution_for: "weight resolution for '-O' [5]"
    category_file: "category file"
    stringent_level_strictest: "stringent level ('3' is the strictest) [2]"
  }
}