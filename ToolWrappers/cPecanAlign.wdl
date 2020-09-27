version 1.0

task CPecanAlign {
  command <<<
    cPecanAlign
  >>>
  output {
    File out_stdout = stdout()
  }
}