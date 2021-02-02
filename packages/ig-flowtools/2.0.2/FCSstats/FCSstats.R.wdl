version 1.0

task FCSstatsR {
  command <<<
    FCSstats_R
  >>>
  output {
    File out_stdout = stdout()
  }
}