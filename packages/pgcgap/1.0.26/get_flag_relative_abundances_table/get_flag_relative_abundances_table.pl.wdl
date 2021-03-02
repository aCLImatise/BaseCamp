version 1.0

task GetFlagRelativeAbundancesTablepl {
  command <<<
    get_flag_relative_abundances_table_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.26--py37pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}