version 1.0

task Mglobrotate {
  command <<<
    mglobrotate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}