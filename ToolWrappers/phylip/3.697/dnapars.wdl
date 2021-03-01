version 1.0

task Dnapars {
  command <<<
    dnapars
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}