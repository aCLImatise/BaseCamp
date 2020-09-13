version 1.0

task Filtertest {
  command <<<
    filtertest
  >>>
  output {
    File out_stdout = stdout()
  }
}