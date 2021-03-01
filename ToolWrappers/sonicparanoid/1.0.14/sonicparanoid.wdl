version 1.0

task Sonicparanoid {
  command <<<
    sonicparanoid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}