version 1.0

task Filteroriginalfusion {
  command <<<
    filteroriginalfusion
  >>>
  output {
    File out_stdout = stdout()
  }
}