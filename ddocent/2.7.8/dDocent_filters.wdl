version 1.0

task DDocentFilters {
  command <<<
    dDocent_filters
  >>>
  output {
    File out_stdout = stdout()
  }
}