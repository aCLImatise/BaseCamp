version 1.0

task Trypticpy {
  command <<<
    tryptic_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}