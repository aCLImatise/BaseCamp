version 1.0

task GetMappableRegions {
  command <<<
    getMappableRegions
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}