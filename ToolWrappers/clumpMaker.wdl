version 1.0

task ClumpMaker {
  command <<<
    clumpMaker
  >>>
  output {
    File out_stdout = stdout()
  }
}