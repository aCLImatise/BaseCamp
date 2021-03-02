version 1.0

task Vt {
  command <<<
    vt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}