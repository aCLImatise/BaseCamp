version 1.0

task ScranfindmarkersR {
  input {
    File? input_sce_object
    String? clusters
    String? p_value_type
    Int? subset_row
    String? assay_type
    String? get_spikes
    File? output_markers
  }
  command <<<
    scran_find_markers_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(p_value_type) then ("--pvalue-type " +  '"' + p_value_type + '"') else ""} \
      ~{if defined(subset_row) then ("--subset_row " +  '"' + subset_row + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(get_spikes) then ("--get-spikes " +  '"' + get_spikes + '"') else ""} \
      ~{if defined(output_markers) then ("--output-markers " +  '"' + output_markers + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    clusters: "A vector of group assignments for all cells."
    p_value_type: "A character specifying how p-values are to be combined across pairwise comparisons for a given group/cluster. Setting pval.type=\\\"all\\\" requires a gene to be DE between each cluster and every other cluster (rather than any other cluster, as is the default with pval.type=\\\"any\\\")."
    subset_row: "Logical, integer or character vector specifying the rows for which to model the variance. Defaults to all genes in x."
    assay_type: "A character specifying which assay values to use."
    get_spikes: "Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE)."
    output_markers: "Path to the rds list of DataFrames with a sorted marker gene list per cluster/group."
  }
  output {
    File out_stdout = stdout()
  }
}