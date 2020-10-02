version 1.0

task JassCreateprojectdata {
  input {
    Array[String] phenotypes
    File? in_it_table_path
  }
  command <<<
    jass create_project_data \
      ~{if defined(phenotypes) then ("--phenotypes " +  '"' + phenotypes + '"') else ""} \
      ~{if defined(in_it_table_path) then ("--init-table-path " +  '"' + in_it_table_path + '"') else ""}
  >>>
  parameter_meta {
    phenotypes: "--worktable-path WORKTABLE_PATH [--keep-nans]\\n--manhattan-plot-path MANHATTAN_PLOT_PATH\\n--quadrant-plot-path QUADRANT_PLOT_PATH\\n[--significance-treshold SIGNIFICANCE_TRESHOLD]\\n[--post-filtering POST_FILTERING]\\n[--custom-loadings CUSTOM_LOADINGS]\\n[--omnibus | --sumz | --fisher_test | --strategy STRATEGY]"
    in_it_table_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}