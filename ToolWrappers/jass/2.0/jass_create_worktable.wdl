version 1.0

task JassCreateworktable {
  input {
    Array[String] phenotypes
    File? in_it_table_path
  }
  command <<<
    jass create_worktable \
      ~{if defined(phenotypes) then ("--phenotypes " +  '"' + phenotypes + '"') else ""} \
      ~{if defined(in_it_table_path) then ("--init-table-path " +  '"' + in_it_table_path + '"') else ""}
  >>>
  parameter_meta {
    phenotypes: "--worktable-path WORKTABLE_PATH\\n[--significance-treshold SIGNIFICANCE_TRESHOLD]\\n[--post-filtering POST_FILTERING]\\n[--custom-loadings CUSTOM_LOADINGS] [--keep-nans]\\n[--omnibus | --sumz | --fisher_test | --strategy STRATEGY]"
    in_it_table_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}