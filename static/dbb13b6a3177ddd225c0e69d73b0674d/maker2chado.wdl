version 1.0

task Maker2chado {
  command <<<
    maker2chado
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}