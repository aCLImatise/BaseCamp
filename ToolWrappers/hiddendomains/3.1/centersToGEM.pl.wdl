version 1.0

task CentersToGEMpl {
  command <<<
    centersToGEM_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}