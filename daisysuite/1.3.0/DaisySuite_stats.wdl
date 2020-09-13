version 1.0

task DaisySuiteStats {
  command <<<
    DaisySuite_stats
  >>>
  output {
    File out_stdout = stdout()
  }
}