version 1.0

task CoolerCload {
  command <<<
    cooler cload
  >>>
  output {
    File out_stdout = stdout()
  }
}