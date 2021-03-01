version 1.0

task Monodis {
  command <<<
    monodis
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}