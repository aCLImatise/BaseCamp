version 1.0

task Bmge {
  command <<<
    bmge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}