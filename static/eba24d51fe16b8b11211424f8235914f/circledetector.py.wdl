version 1.0

task Circledetectorpy {
  command <<<
    circledetector_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}