version 1.0

task FilterAndScaffoldpy {
  command <<<
    FilterAndScaffold_py
  >>>
  output {
    File out_stdout = stdout()
  }
}