version 1.0

task Sample2markerspy {
  command <<<
    sample2markers_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}