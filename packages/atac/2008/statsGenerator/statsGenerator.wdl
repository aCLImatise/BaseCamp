version 1.0

task StatsGenerator {
  command <<<
    statsGenerator
  >>>
  output {
    File out_stdout = stdout()
  }
}