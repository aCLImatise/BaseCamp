version 1.0

task Airrtools {
  command <<<
    airr_tools
  >>>
  output {
    File out_stdout = stdout()
  }
}