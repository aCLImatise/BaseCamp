version 1.0

task Obthermo {
  command <<<
    obthermo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}