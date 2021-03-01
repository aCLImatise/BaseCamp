version 1.0

task JassCreateworktable {
  input {
    File? in_it_table_path
    Array[String] phenotypes
    File? work_table_path
    String? significance_treshold
    String? post_filtering
    File? custom_loadings
  }
  command <<<
    jass create_worktable \
      ~{if defined(in_it_table_path) then ("--init-table-path " +  '"' + in_it_table_path + '"') else ""} \
      ~{if defined(phenotypes) then ("--phenotypes " +  '"' + phenotypes + '"') else ""} \
      ~{if defined(work_table_path) then ("--worktable-path " +  '"' + work_table_path + '"') else ""} \
      ~{if defined(significance_treshold) then ("--significance-treshold " +  '"' + significance_treshold + '"') else ""} \
      ~{if defined(post_filtering) then ("--post-filtering " +  '"' + post_filtering + '"') else ""} \
      ~{if defined(custom_loadings) then ("--custom-loadings " +  '"' + custom_loadings + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_it_table_path: "path to the initial data table, default is the\\nconfigured path (JASS_DATA_DIR/initTable.hdf5)"
    phenotypes: "list of selected phenotypes"
    work_table_path: "path to the worktable file to generate"
    significance_treshold: "threshold at which a p-value is considered significant"
    post_filtering: "If a filtering to remove outlier will be applied (in\\nthis case the result of SNPs considered aberant will\\nnot appear in the worktable)"
    custom_loadings: "path toward a csv file containing custom loading for\\nsumZ tests"
  }
  output {
    File out_stdout = stdout()
  }
}