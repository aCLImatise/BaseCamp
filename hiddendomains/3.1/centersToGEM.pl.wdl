version 1.0

task CentersToGEMpl {
  command <<<
    centersToGEM_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}