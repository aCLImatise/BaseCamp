version 1.0

task Modules {
  command <<<
    modules
  >>>
  output {
    File out_stdout = stdout()
  }
}