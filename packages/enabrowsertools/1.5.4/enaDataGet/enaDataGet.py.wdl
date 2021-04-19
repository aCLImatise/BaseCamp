version 1.0

task EnaDataGetpy {
  command <<<
    enaDataGet_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}