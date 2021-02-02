version 1.0

task Simread {
  command <<<
    simread
  >>>
  output {
    File out_stdout = stdout()
  }
}