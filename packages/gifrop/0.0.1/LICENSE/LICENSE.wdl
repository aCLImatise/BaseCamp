version 1.0

task LICENSE {
  command <<<
    LICENSE
  >>>
  output {
    File out_stdout = stdout()
  }
}