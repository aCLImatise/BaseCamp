version 1.0

task PARalyzer {
  command <<<
    PARalyzer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}