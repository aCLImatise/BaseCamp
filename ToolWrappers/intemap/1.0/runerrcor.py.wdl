version 1.0

task Runerrcorpy {
  command <<<
    runerrcor_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}