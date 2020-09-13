version 1.0

task JassCreateprojectdata {
  input {
    Array[String] phenotypes
    File? work_table_path
    File? manhattan_plot_path
    File? quadrant_plot_path
    File? in_it_table_path
    Boolean? keep_nans
    String? significance_treshold
    String? post_filtering
    File? custom_loadings
    Boolean? omnibus
    Boolean? sum_z
    Boolean? fisher_test
    String? strategy
  }
  command <<<
    jass create_project_data \
      ~{if defined(phenotypes) then ("--phenotypes " +  '"' + phenotypes + '"') else ""} \
      ~{if defined(work_table_path) then ("--worktable-path " +  '"' + work_table_path + '"') else ""} \
      ~{if defined(manhattan_plot_path) then ("--manhattan-plot-path " +  '"' + manhattan_plot_path + '"') else ""} \
      ~{if defined(quadrant_plot_path) then ("--quadrant-plot-path " +  '"' + quadrant_plot_path + '"') else ""} \
      ~{if defined(in_it_table_path) then ("--init-table-path " +  '"' + in_it_table_path + '"') else ""} \
      ~{if (keep_nans) then "--keep-nans" else ""} \
      ~{if defined(significance_treshold) then ("--significance-treshold " +  '"' + significance_treshold + '"') else ""} \
      ~{if defined(post_filtering) then ("--post-filtering " +  '"' + post_filtering + '"') else ""} \
      ~{if defined(custom_loadings) then ("--custom-loadings " +  '"' + custom_loadings + '"') else ""} \
      ~{if (omnibus) then "--omnibus" else ""} \
      ~{if (sum_z) then "--sumz" else ""} \
      ~{if (fisher_test) then "--fisher_test" else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""}
  >>>
  parameter_meta {
    phenotypes: ""
    work_table_path: "[--keep-nans]"
    manhattan_plot_path: ""
    quadrant_plot_path: ""
    in_it_table_path: "path to the initial data file, default is the\\nconfigured path (JASS_DATA_DIR/initTable.hdf5)"
    keep_nans: ""
    significance_treshold: "The treshold at which a p-value is considered\\nsignificant"
    post_filtering: "If a filtering to remove outlier will be applied (in\\nthis case the result of SNPs considered aberant will\\nnot appear in the worktable)"
    custom_loadings: "path toward a csv file containing custom loading for\\nsumZ tests"
    omnibus: ""
    sum_z: ""
    fisher_test: ""
    strategy: ""
  }
  output {
    File out_stdout = stdout()
  }
}