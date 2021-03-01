version 1.0

task ReplaceIDpy {
  command <<<
    replaceID_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}