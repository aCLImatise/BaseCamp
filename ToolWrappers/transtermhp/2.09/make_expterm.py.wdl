version 1.0

task MakeExptermpy {
  command <<<
    make_expterm_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}