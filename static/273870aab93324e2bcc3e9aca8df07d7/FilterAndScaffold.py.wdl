version 1.0

task FilterAndScaffoldpy {
  command <<<
    FilterAndScaffold_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}