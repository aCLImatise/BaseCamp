version 1.0

task Sbt {
  command <<<
    sbt
  >>>
  output {
    File out_stdout = stdout()
  }
}