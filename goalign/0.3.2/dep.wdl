version 1.0

task Dep {
  command <<<
    dep
  >>>
  output {
    File out_stdout = stdout()
  }
}