version 1.0

task AxtSort {
  command <<<
    axtSort
  >>>
  output {
    File out_stdout = stdout()
  }
}