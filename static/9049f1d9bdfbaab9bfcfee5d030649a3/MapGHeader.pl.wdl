version 1.0

task MapGHeaderpl {
  command <<<
    MapGHeader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}