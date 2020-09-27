version 1.0

task Iris {
  command <<<
    iris
  >>>
  output {
    File out_stdout = stdout()
  }
}