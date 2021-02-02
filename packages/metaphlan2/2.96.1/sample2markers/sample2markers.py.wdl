version 1.0

task Sample2markerspy {
  command <<<
    sample2markers_py
  >>>
  output {
    File out_stdout = stdout()
  }
}