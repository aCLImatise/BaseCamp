version 1.0

task ScranbuildsnngraphR {
  input {
    File? input_sce_object
    String? shared
    Int? k_value
    Int? d_value
    String? type
    String? transposed
    Int? subset_row
    String? assay_type
    String? get_spikes
    String? use_dim_red
    File? output_i_graph_object
  }
  command <<<
    scran_build_snn_graph_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(shared) then ("--shared " +  '"' + shared + '"') else ""} \
      ~{if defined(k_value) then ("--k-value " +  '"' + k_value + '"') else ""} \
      ~{if defined(d_value) then ("--d-value " +  '"' + d_value + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(transposed) then ("--transposed " +  '"' + transposed + '"') else ""} \
      ~{if defined(subset_row) then ("--subset_row " +  '"' + subset_row + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(get_spikes) then ("--get-spikes " +  '"' + get_spikes + '"') else ""} \
      ~{if defined(use_dim_red) then ("--use-dimred " +  '"' + use_dim_red + '"') else ""} \
      ~{if defined(output_i_graph_object) then ("--output-igraph-object " +  '"' + output_i_graph_object + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    shared: "Logical specifying wether to compute a Shared NN Graph (if shared=TRUE) or a kNN Graph(if shared=FALSE)."
    k_value: "An integer scalar specifying the number of nearest neighbors to consider during graph construction."
    d_value: "An integer scalar specifying the number of dimensions to use for the search."
    type: "A string specifying the type of weighting scheme to use for shared neighbors."
    transposed: "A logical scalar indicating whether x is transposed (i.e., rows are cells)."
    subset_row: "Logical, integer or character vector specifying the rows for which to model the variance. Defaults to all genes in x."
    assay_type: "A string specifying which assay values to use. Default: logcounts."
    get_spikes: "Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE)."
    use_dim_red: "A string specifying whether existing values in reducedDims(x) should be used."
    output_i_graph_object: "Path to the output igraph object in RDS format."
  }
  output {
    File out_stdout = stdout()
    File out_output_i_graph_object = "${in_output_i_graph_object}"
  }
}