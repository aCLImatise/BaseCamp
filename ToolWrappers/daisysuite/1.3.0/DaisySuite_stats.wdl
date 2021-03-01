version 1.0

task DaisySuiteStats {
  command <<<
    DaisySuite_stats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}