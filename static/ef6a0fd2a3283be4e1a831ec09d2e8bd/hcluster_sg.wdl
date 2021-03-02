version 1.0

task HclusterSg {
  input {
    Int? minimum_edge_weight
    Float? minimum_edge_density
    Int? maximum_size
    File? output_file
    Boolean? only_find_bypass
    Boolean? verbose_mode
    Float? breaking_edge_density
    Boolean? the_oncefailinactiveforever_mode
    Boolean? weight_resolution_for
    File? category_file
    Int? stringent_level_strictest
  }
  command <<<
    hcluster_sg \
      ~{if defined(minimum_edge_weight) then ("-w " +  '"' + minimum_edge_weight + '"') else ""} \
      ~{if defined(minimum_edge_density) then ("-s " +  '"' + minimum_edge_density + '"') else ""} \
      ~{if defined(maximum_size) then ("-m " +  '"' + maximum_size + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if (only_find_bypass) then "-c" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if defined(breaking_edge_density) then ("-b " +  '"' + breaking_edge_density + '"') else ""} \
      ~{if (the_oncefailinactiveforever_mode) then "-O" else ""} \
      ~{if (weight_resolution_for) then "-r" else ""} \
      ~{if defined(category_file) then ("-C " +  '"' + category_file + '"') else ""} \
      ~{if defined(stringent_level_strictest) then ("-L " +  '"' + stringent_level_strictest + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_edge_weight: "minimum edge weight [20]"
    minimum_edge_density: "minimum edge density between a join [0.50]"
    maximum_size: "maximum size [500]"
    output_file: "output file [stdout]"
    only_find_bypass: "only find single-linkage clusters (bypass h-cluster)"
    verbose_mode: "verbose mode"
    breaking_edge_density: "breaking edge density [0.10]"
    the_oncefailinactiveforever_mode: "the once-fail-inactive-forever mode"
    weight_resolution_for: "weight resolution for '-O' [5]"
    category_file: "category file"
    stringent_level_strictest: "stringent level ('3' is the strictest) [2]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}