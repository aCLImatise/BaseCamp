version 1.0

task Udockerpy {
  command <<<
    udocker_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}