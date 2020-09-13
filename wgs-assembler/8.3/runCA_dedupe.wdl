version 1.0

task RunCAdedupe {
  command <<<
    runCA_dedupe
  >>>
  output {
    File out_stdout = stdout()
  }
}