version 1.0

task Clairpy {
  command <<<
    clair_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}