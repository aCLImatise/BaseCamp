version 1.0

task MapGHeaderpl {
  command <<<
    MapGHeader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}