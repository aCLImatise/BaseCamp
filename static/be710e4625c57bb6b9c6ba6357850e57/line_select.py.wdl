version 1.0

task LineSelectpy {
  command <<<
    line_select_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}