version 1.0

task Scalabat {
  command <<<
    scala_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}