version 1.0

task Ibrowse {
  command <<<
    ibrowse
  >>>
  output {
    File out_stdout = stdout()
  }
}