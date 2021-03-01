version 1.0

task Epicoverlaps {
  command <<<
    epic_overlaps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}