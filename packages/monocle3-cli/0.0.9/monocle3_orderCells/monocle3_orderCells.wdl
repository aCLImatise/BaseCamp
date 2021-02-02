version 1.0

task Monocle3OrderCells {
  input {
    Int? input_object_format
    Int? output_object_format
    Boolean? introspective
    String? root_pr_nodes
    String? root_cells
    String? cell_phenotype
    String? root_type
    String? reduction_method
    Boolean? verbose
    String input_object
    String output_object
  }
  command <<<
    monocle3 orderCells \
      ~{input_object} \
      ~{output_object} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_object_format) then ("--output-object-format " +  '"' + output_object_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if defined(root_pr_nodes) then ("--root-pr-nodes " +  '"' + root_pr_nodes + '"') else ""} \
      ~{if defined(root_cells) then ("--root-cells " +  '"' + root_cells + '"') else ""} \
      ~{if defined(cell_phenotype) then ("--cell-phenotype " +  '"' + cell_phenotype + '"') else ""} \
      ~{if defined(root_type) then ("--root-type " +  '"' + root_type + '"') else ""} \
      ~{if defined(reduction_method) then ("--reduction-method " +  '"' + reduction_method + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_object_format: "Format of output object. [Default: cds3]"
    introspective: "Print introspective information of the output object."
    root_pr_nodes: "The starting principal points. We learn a principal graph that passes\\nthrough the middle of the data points and use it to represent the\\ndevelopmental process. Exclusive with --root-cells."
    root_cells: "The starting cells. Each cell corresponds to a principal point and multiple cells can correspond to the same principal point. Exclusive with --root-pr-nodes."
    cell_phenotype: "The cell phenotype (column in pdata) used to identify root principal nodes."
    root_type: "The value of the phenotype specified by \\\"--cell-pheontype\\\" that defines cells root principal nodes."
    reduction_method: "The dimensionality reduction that was used for clustering, choose from {UMAP, tSNE, PCA, LSI}. [Default: UMAP]"
    verbose: "Emit verbose output."
    input_object: ""
    output_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}