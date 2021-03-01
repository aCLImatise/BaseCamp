version 1.0

task Distructpy {
  command <<<
    distruct_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}