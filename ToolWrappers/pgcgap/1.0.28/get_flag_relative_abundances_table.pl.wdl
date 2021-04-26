version 1.0

task GetFlagRelativeAbundancesTablepl {
  command <<<
    get_flag_relative_abundances_table_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}