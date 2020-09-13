version 1.0

task CleanAtac {
  command <<<
    cleanAtac
  >>>
  output {
    File out_stdout = stdout()
  }
}