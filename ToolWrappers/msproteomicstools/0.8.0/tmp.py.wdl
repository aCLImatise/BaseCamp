version 1.0

task Tmppy {
  command <<<
    tmp_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}