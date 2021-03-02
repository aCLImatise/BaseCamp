version 1.0

task StatsGenerator {
  command <<<
    statsGenerator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}