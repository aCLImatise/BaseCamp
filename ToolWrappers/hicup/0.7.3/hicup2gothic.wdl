version 1.0

task Hicup2gothic {
  command <<<
    hicup2gothic
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}