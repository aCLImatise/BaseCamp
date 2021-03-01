version 1.0

task Desmanflownf {
  command <<<
    desmanflow_nf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}