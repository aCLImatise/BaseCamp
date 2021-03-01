version 1.0

task Archosv {
  command <<<
    archosv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}