version 1.0

task ScrancorrelatepairsR {
  input {
    File? input_sce_object
    String? block
    String? design
    String? assay_type
    Int? iters
    String? use_names
    Int? subset_row
    String? get_spikes
    String? use_dim_red
    File? output_pairs_df
  }
  command <<<
    scran_correlate_pairs_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(block) then ("--block " +  '"' + block + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(iters) then ("--iters " +  '"' + iters + '"') else ""} \
      ~{if defined(use_names) then ("--use-names " +  '"' + use_names + '"') else ""} \
      ~{if defined(subset_row) then ("--subset_row " +  '"' + subset_row + '"') else ""} \
      ~{if defined(get_spikes) then ("--get-spikes " +  '"' + get_spikes + '"') else ""} \
      ~{if defined(use_dim_red) then ("--use-dimred " +  '"' + use_dim_red + '"') else ""} \
      ~{if defined(output_pairs_df) then ("--output-pairs-df " +  '"' + output_pairs_df + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    block: "A factor specifying the blocking levels for each cell in sce, for instance a donor covariate. If specified, correlations are computed separately within each block and statistics are combined across blocks."
    design: "A numeric design matrix containing uninteresting factors to be ignored."
    assay_type: "A character specifying which assay values to use."
    iters: "Integer scalar specifying the number of iterations to use in correlateNull to build the null distribution."
    use_names: "A logical scalar specifying whether the row names of x should be used in the output. Alternatively, a character vector containing the names to use."
    subset_row: "Logical, integer or character vector specifying the rows for which to model the variance. Defaults to all genes in x."
    get_spikes: "Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE)."
    use_dim_red: "A string specifying whether existing values in reducedDims(x) should be used."
    output_pairs_df: "Path to the output dataframe with one row per gene pair (rows order by increasing p-values) in txt format."
  }
  output {
    File out_stdout = stdout()
    File out_output_pairs_df = "${in_output_pairs_df}"
  }
}