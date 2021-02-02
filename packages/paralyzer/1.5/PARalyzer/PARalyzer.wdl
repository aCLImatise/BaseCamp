version 1.0

task PARalyzer {
  command <<<
    PARalyzer
  >>>
  output {
    File out_stdout = stdout()
  }
}