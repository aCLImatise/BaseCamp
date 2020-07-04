version 1.0

task ScanpyFindMarkers {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Boolean? use_raw
    String? group_by
    Array[String] groups
    String? reference
    Int? n_genes
    Boolean? method
    Boolean? corr_method
    Boolean? rank_by_abs
    String? filter_params
    String? log_reg_param
    File? save
    String input_obj
    String output_obj
  }
  command <<<
    scanpy-find-markers \
      ~{input_obj} \
      ~{output_obj} \
      ~{true="--input-format" false="" input_format} \
      ~{true="--output-format" false="" output_format} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{true="--show-obj" false="" show_obj} \
      ~{true="--use-raw" false="" use_raw} \
      ~{if defined(group_by) then ("--groupby " +  '"' + group_by + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(n_genes) then ("--n-genes " +  '"' + n_genes + '"') else ""} \
      ~{true="--method" false="" method} \
      ~{true="--corr-method" false="" corr_method} \
      ~{true="--rankby-abs" false="" rank_by_abs} \
      ~{if defined(filter_params) then ("--filter-params " +  '"' + filter_params + '"') else ""} \
      ~{if defined(log_reg_param) then ("--logreg-param " +  '"' + log_reg_param + '"') else ""} \
      ~{if defined(save) then ("--save " +  '"' + save + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom] Input object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr] Output object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr format.  [default: 1000]"
    export_mtx: "When specified, using it as prefix for exporting mtx files. If not empty and not ending with \"/\" or \"_\", a \"_\" will be appended."
    show_obj: "[stdout|stderr]      Print output object summary info to specified stream."
    use_raw: "/ --no-raw            Use expression values in `.raw` if present. [default: True]"
    group_by: "The key of the observations grouping to consider.  [required]"
    groups: "Subset of groups to which comparison shall be restricted.  [default: all]"
    reference: "If \"rest\", compare each group to the union of the rest of the groups. If a group identifier, compare with respect to this group.  [default: rest]"
    n_genes: "The number of genes that appear in the retured tables. By default return all available genes depending on the value of --use-raw."
    method: "[logreg|t-test|wilcoxon|t-test_overestim_var] Method of performing differential expression analysis.  [default: t-test_overestim_var]"
    corr_method: "[benjamini-hochberg|bonferroni] P-value correction method. Used only for \"t-test\", \"t-test_overestim_var\" and \"wilcoxon\".  [default: benjamini-hochberg]"
    rank_by_abs: "Rank genes by the absolute value of the score, not by the score. The returned scores are never the absolute values.  [default: False]"
    filter_params: ":VAL[,TEXT:VAL...] Parameters for filtering DE results, valid parameters are: \"min_in_group_fraction\" (float), \"max_out_group_fraction\" (float), \"min_fold_change\" (float)."
    log_reg_param: ":VAL[,TEXT:VAL...] Parameters passed to `sklearn.linear_model.LogisticRegression`."
    save: "Tab-separated table to store results of differential expression analysis."
    input_obj: ""
    output_obj: ""
  }
}