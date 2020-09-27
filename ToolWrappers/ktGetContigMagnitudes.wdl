version 1.0

task KtGetContigMagnitudes {
  command <<<
    ktGetContigMagnitudes
  >>>
  output {
    File out_stdout = stdout()
  }
}