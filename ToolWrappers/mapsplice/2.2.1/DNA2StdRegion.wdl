version 1.0

task DNA2StdRegion {
  command <<<
    DNA2StdRegion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}