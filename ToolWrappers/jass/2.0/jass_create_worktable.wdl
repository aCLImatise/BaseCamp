version 1.0

task JassCreateworktable {
  input {
    Array[String] phenotypes
    File? work_table_path
    File? in_it_table_path
    String? significance_treshold
    String? post_filtering
    File? custom_loadings
    Boolean? keep_nans
    Boolean? omnibus
    Boolean? sum_z
    Boolean? fisher_test
    String? strategy
  }
  command <<<
    jass create_worktable \
      ~{if defined(phenotypes) then ("--phenotypes " +  '"' + phenotypes + '"') else ""} \
      ~{if defined(work_table_path) then ("--worktable-path " +  '"' + work_table_path + '"') else ""} \
      ~{if defined(in_it_table_path) then ("--init-table-path " +  '"' + in_it_table_path + '"') else ""} \
      ~{if defined(significance_treshold) then ("--significance-treshold " +  '"' + significance_treshold + '"') else ""} \
      ~{if defined(post_filtering) then ("--post-filtering " +  '"' + post_filtering + '"') else ""} \
      ~{if defined(custom_loadings) then ("--custom-loadings " +  '"' + custom_loadings + '"') else ""} \
      ~{if (keep_nans) then "--keep-nans" else ""} \
      ~{if (omnibus) then "--omnibus" else ""} \
      ~{if (sum_z) then "--sumz" else ""} \
      ~{if (fisher_test) then "--fisher_test" else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""}
  >>>
  parameter_meta {
    phenotypes: ""
    work_table_path: ""
    in_it_table_path: "path to the initial data table, default is the\\nconfigured path (JASS_DATA_DIR/initTable.hdf5)"
    significance_treshold: "threshold at which a p-value is considered significant"
    post_filtering: "If a filtering to remove outlier will be applied (in\\nthis case the result of SNPs considered aberant will\\nnot appear in the worktable)"
    custom_loadings: "path toward a csv file containing custom loading for\\nsumZ tests"
    keep_nans: ""
    omnibus: ""
    sum_z: ""
    fisher_test: ""
    strategy: ""
  }
  output {
    File out_stdout = stdout()
  }
}