version 1.0

task DDocentFilters {
  command <<<
    dDocent_filters
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}