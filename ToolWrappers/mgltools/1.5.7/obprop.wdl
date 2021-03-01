version 1.0

task Obprop {
  command <<<
    obprop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}