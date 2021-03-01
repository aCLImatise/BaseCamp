version 1.0

task FindChimeras {
  command <<<
    findChimeras
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}