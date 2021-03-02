version 1.0

task FCSstatsR {
  command <<<
    FCSstats_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}