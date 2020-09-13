version 1.0

task MotifRaptor {
  command <<<
    MotifRaptor
  >>>
  output {
    File out_stdout = stdout()
  }
}