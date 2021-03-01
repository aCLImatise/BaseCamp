version 1.0

task Padel {
  command <<<
    padel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}